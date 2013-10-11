.class Lcom/android/server/WifiService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 995
    iget-object v7, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_generalinfo_nwinfo"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 997
    .local v6, generalinfonw:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 998
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "String Matched General Info List"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/wifi"

    const-string v8, "generalinfo_nw.conf"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1004
    .local v5, generalinfofilepath:Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 1005
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "chmod 664 /data/misc/wifi/generalinfo_nw.conf"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 1007
    .local v4, generalP:Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 1008
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1016
    .end local v4           #generalP:Ljava/lang/Process;
    :goto_0
    const/4 v2, 0x0

    .line 1018
    .local v2, generalFW:Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v2           #generalFW:Ljava/io/FileOutputStream;
    .local v3, generalFW:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1022
    .end local v3           #generalFW:Ljava/io/FileOutputStream;
    .restart local v2       #generalFW:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 1023
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1029
    .end local v2           #generalFW:Ljava/io/FileOutputStream;
    .end local v5           #generalinfofilepath:Ljava/io/File;
    :goto_2
    return-void

    .line 1009
    .restart local v4       #generalP:Ljava/lang/Process;
    .restart local v5       #generalinfofilepath:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1010
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1012
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #generalP:Ljava/lang/Process;
    :catch_1
    move-exception v0

    .line 1013
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1024
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #generalinfofilepath:Ljava/io/File;
    :catch_2
    move-exception v0

    .line 1025
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "WifiService"

    const-string v8, "GeneralInfo Network File Create Not Found "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1019
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #generalFW:Ljava/io/FileOutputStream;
    .restart local v5       #generalinfofilepath:Ljava/io/File;
    :catch_3
    move-exception v1

    .line 1020
    .local v1, e1:Ljava/lang/Exception;
    :try_start_7
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generalinfofilepath create file failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 1026
    .end local v1           #e1:Ljava/lang/Exception;
    .end local v2           #generalFW:Ljava/io/FileOutputStream;
    .end local v5           #generalinfofilepath:Ljava/io/File;
    :catch_4
    move-exception v0

    .line 1027
    .local v0, e:Ljava/io/IOException;
    const-string v7, "WifiService"

    const-string v8, "GeneralInfo Network IOException"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
