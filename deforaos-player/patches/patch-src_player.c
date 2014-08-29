$NetBSD$

Fixed build with libDesktop >= 0.1.0

--- src/player.c.orig	2013-02-23 16:54:15.000000000 +0000
+++ src/player.c
@@ -478,8 +478,8 @@ Player * player_new(void)
 	/* mplayer */
 	_player_start(player);
 	/* messages */
-	desktop_message_register(PLAYER_CLIENT_MESSAGE, on_player_message,
-			player);
+	desktop_message_register(player->window, PLAYER_CLIENT_MESSAGE,
+			on_player_message, player);
 	return player;
 }
 
