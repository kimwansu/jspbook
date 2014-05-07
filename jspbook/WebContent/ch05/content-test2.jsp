<%@ page contentType="image/png" %>
<%@ page import="java.awt.Color" %>
<%@ page import="java.awt.Graphics" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %>
<%! int level[] = new int[] {90, 50, 72, 42}; %>
<%
try {
    level[0] = Integer.parseInt(request.getParameter("a"));
} catch (Exception e) {;}

try {
    level[1] = Integer.parseInt(request.getParameter("b"));
} catch (Exception e) {;}

try {
    level[2] = Integer.parseInt(request.getParameter("c"));
} catch (Exception e) {;}

try {
    level[3] = Integer.parseInt(request.getParameter("d"));
} catch (Exception e) {;}

ServletOutputStream outputStream = response.getOutputStream();
BufferedImage image = new BufferedImage(480, 256, BufferedImage.TYPE_3BYTE_BGR);
Graphics g = image.getGraphics();

Color white = new Color(192, 192, 192);
Color gray = new Color(127, 127, 127);
Color darkGray = new Color(64, 64, 64);
Color waterBlue = new Color(153, 217, 234);
Color waterFull = new Color(192, 0, 0);
Color waterEmpty = new Color(32, 32, 128);

g.setColor(darkGray);
g.fillRect(0, 0, 480, 256);

for (int i = 0; i < 4; i++) {
    g.setColor(gray);
    g.fillRect(32 + 112 * i, 32, 80, 200);
    
    if (level[i] > 80) {
        g.setColor(waterFull);
    } else if (level[i] < 20) {
        g.setColor(waterEmpty);
    } else {
        g.setColor(waterBlue);
    }
    g.fillRect(32 + 112 * i, 232 - 2 * level[i], 80, 2 * level[i]);

    g.setColor(white);
    for (int j = 0; j < 3; j++) {
        int x1 = 32 + 112 * i;
        int x2 = 111 + 112 * i;
        int y1 = 82 + 50 * j;
        int y2 = 82 + 50 * j;
        
        g.drawLine(x1, y1, x2, y2);
        g.drawLine(x1, y1 + 1, x2, y2 + 1);
        g.drawLine(x1, y1 - 1, x2, y2 - 1);
    }
    g.drawRect(32 + 112 * i, 32, 80, 200);
    g.drawRect(33 + 112 * i, 33, 78, 198);
    
    // 존재하지 않는 탱크
    g.setColor(darkGray);
    if (level[i] < 0) {
        g.fillRect(32 + 112 * i, 32, 81, 201);
    }
}

ImageIO.write(image, "png", outputStream);
outputStream.close();
%>