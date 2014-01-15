.class Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;
.super Landroid/os/AsyncTask;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/KiesLocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KiesOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final BACKUP_MODE:I = 0x1

.field private static final ERROR_INVALID_DATA:I = 0x3

.field private static final ERROR_STORAGE_FULL:I = 0x2

.field private static final ERROR_SUCCESS:I = 0x0

.field private static final ERROR_UNKNOWN:I = 0x1

.field private static final GOOGLE_LOCATION_TAG:Ljava/lang/String; = "google_location_service"

.field private static final GPS_LOCATION_TAG:Ljava/lang/String; = "standalone_gps_service"

.field private static final LOCATION_TAG:Ljava/lang/String; = "VZWLocationSvc"

.field public static final RESTORE_MODE:I = 0x2

.field private static final RESULT_FAIL:I = 0x1

.field private static final RESULT_OK:I = 0x0

.field private static final VZW_LOCATION_TAG:Ljava/lang/String; = "vzw_location_service"

.field private static final VZW_PROVIDER:Ljava/lang/String; = "vzw_lbs"

.field private static final XML_FILE_NAME:Ljava/lang/String; = "location_service.xml"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mMode:I

.field private mPath:Ljava/lang/String;

.field private mResult:I

.field private mSource:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/KiesLocationReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/KiesLocationReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "path"
    .parameter "source"
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->this$0:Lcom/android/settings_ex/KiesLocationReceiver;

    .line 103
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 79
    iput v0, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 80
    iput v0, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 81
    iput v0, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mMode:I

    .line 104
    iput-object p2, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mSource:Ljava/lang/String;

    .line 107
    iput p5, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mMode:I

    .line 108
    const-string v0, "KiesLocationReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "KiesLocationReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "KiesLocationReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method private generateXml(Ljava/io/File;)I
    .locals 11
    .parameter "xml"

    .prologue
    const/4 v8, 0x0

    .line 131
    const/4 v3, 0x0

    .line 134
    .local v3, output:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 135
    .local v6, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    .line 136
    .end local v3           #output:Ljava/io/FileOutputStream;
    .local v4, output:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 137
    .local v5, res:Landroid/content/ContentResolver;
    const-string v9, "vzw_lbs"

    invoke-static {v5, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    .line 138
    .local v7, vzwEnabled:Z
    const-string v9, "gps"

    invoke-static {v5, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 139
    .local v1, gpsEnabled:Z
    const-string v9, "network"

    invoke-static {v5, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 141
    .local v2, newtworkEnabled:Z
    const-string v9, "UTF-8"

    invoke-interface {v6, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 142
    const-string v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 143
    const/4 v9, 0x0

    const-string v10, "VZWLocationSvc"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const/4 v9, 0x0

    const-string v10, "vzw_location_service"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    if-eqz v7, :cond_2

    const-string v9, "on"

    :goto_0
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const/4 v9, 0x0

    const-string v10, "vzw_location_service"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const/4 v9, 0x0

    const-string v10, "standalone_gps_service"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    if-eqz v1, :cond_3

    const-string v9, "on"

    :goto_1
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const/4 v9, 0x0

    const-string v10, "standalone_gps_service"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const/4 v9, 0x0

    const-string v10, "google_location_service"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    if-eqz v2, :cond_4

    const-string v9, "on"

    :goto_2
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    const/4 v9, 0x0

    const-string v10, "google_location_service"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const/4 v9, 0x0

    const-string v10, "VZWLocationSvc"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 160
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 162
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 163
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-wide v8

    long-to-int v8, v8

    .line 180
    if-eqz v4, :cond_0

    .line 181
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_3
    move-object v3, v4

    .line 188
    .end local v1           #gpsEnabled:Z
    .end local v2           #newtworkEnabled:Z
    .end local v4           #output:Ljava/io/FileOutputStream;
    .end local v5           #res:Landroid/content/ContentResolver;
    .end local v6           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #vzwEnabled:Z
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :cond_1
    :goto_4
    return v8

    .line 146
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v1       #gpsEnabled:Z
    .restart local v2       #newtworkEnabled:Z
    .restart local v4       #output:Ljava/io/FileOutputStream;
    .restart local v5       #res:Landroid/content/ContentResolver;
    .restart local v6       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7       #vzwEnabled:Z
    :cond_2
    :try_start_3
    const-string v9, "off"

    goto :goto_0

    .line 150
    :cond_3
    const-string v9, "off"

    goto :goto_1

    .line 154
    :cond_4
    const-string v9, "off"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #gpsEnabled:Z
    .end local v2           #newtworkEnabled:Z
    .end local v4           #output:Ljava/io/FileOutputStream;
    .end local v5           #res:Landroid/content/ContentResolver;
    .end local v6           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #vzwEnabled:Z
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/io/IOException;
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 169
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    if-eqz v3, :cond_1

    .line 181
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 183
    :catch_2
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 170
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/IllegalStateException;
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 173
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    if-eqz v3, :cond_1

    .line 181
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    .line 183
    :catch_4
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 174
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 177
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    if-eqz v3, :cond_1

    .line 181
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    .line 183
    :catch_6
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 180
    :goto_8
    if-eqz v3, :cond_5

    .line 181
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 185
    :cond_5
    :goto_9
    throw v8

    .line 183
    :catch_7
    move-exception v0

    .line 184
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    .restart local v6       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 174
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 170
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 166
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method private readXml(Ljava/io/File;)I
    .locals 14
    .parameter "xml"

    .prologue
    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, input:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 194
    .local v9, totalCount:I
    const/4 v5, 0x0

    .line 195
    .local v5, item:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 197
    .local v7, res:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8

    .line 198
    .end local v3           #input:Ljava/io/FileInputStream;
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 199
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 200
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "UTF-8"

    invoke-interface {v6, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 201
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 202
    .local v1, eventType:I
    :goto_0
    const/4 v11, 0x1

    if-eq v1, v11, :cond_6

    .line 203
    packed-switch v1, :pswitch_data_0

    .line 243
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 210
    goto :goto_1

    .line 212
    :pswitch_2
    const/4 v5, 0x0

    .line 213
    goto :goto_1

    .line 215
    :pswitch_3
    if-eqz v5, :cond_0

    .line 219
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 220
    .local v10, value:Ljava/lang/String;
    const-string v11, "on"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 221
    const/4 v8, 0x1

    .line 228
    .local v8, result:Z
    :goto_2
    const-string v11, "vzw_location_service"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 229
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting vzw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v11, "vzw_lbs"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 231
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 222
    .end local v8           #result:Z
    :cond_1
    const-string v11, "off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 223
    const/4 v8, 0x0

    .restart local v8       #result:Z
    goto :goto_2

    .line 225
    .end local v8           #result:Z
    :cond_2
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid value for item: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b

    goto :goto_1

    .line 255
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 256
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #input:Ljava/io/FileInputStream;
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 258
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 280
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    :goto_4
    const/4 v11, 0x0

    :goto_5
    return v11

    .line 232
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8       #result:Z
    .restart local v10       #value:Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v11, "standalone_gps_service"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 233
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting gps: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v11, "gps"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 235
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 236
    :cond_5
    const-string v11, "google_location_service"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 237
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting google: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v11, "network"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 239
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 246
    .end local v8           #result:Z
    .end local v10           #value:Ljava/lang/String;
    :cond_6
    if-nez v9, :cond_8

    .line 247
    const-string v11, "KiesLocationReceiver"

    const-string v12, "failed to restore - no items"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 249
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b

    .line 250
    const/4 v11, 0x0

    .line 273
    if-eqz v4, :cond_7

    .line 274
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    :goto_6
    move-object v3, v4

    .line 278
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_5

    .line 276
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 277
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 252
    .end local v0           #e:Ljava/io/IOException;
    :cond_8
    const/4 v11, 0x0

    :try_start_6
    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 253
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_b

    move-result-wide v11

    long-to-int v11, v11

    .line 273
    if-eqz v4, :cond_9

    .line 274
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    :goto_7
    move-object v3, v4

    .line 278
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_5

    .line 276
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 277
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 276
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #input:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 259
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/IllegalStateException;
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 262
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_4

    .line 276
    :catch_5
    move-exception v0

    .line 277
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 263
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :goto_9
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 266
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_4

    .line 276
    :catch_7
    move-exception v0

    .line 277
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 267
    .end local v0           #e:Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 268
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_a
    :try_start_c
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 269
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 270
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_4

    .line 276
    :catch_9
    move-exception v0

    .line 277
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 272
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 273
    :goto_b
    if-eqz v3, :cond_a

    .line 274
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 278
    :cond_a
    :goto_c
    throw v11

    .line 276
    :catch_a
    move-exception v0

    .line 277
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 272
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_b

    .line 267
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_a

    .line 263
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_9

    .line 259
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_8

    .line 255
    :catch_e
    move-exception v0

    goto/16 :goto_3

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mMode:I

    if-nez v1, :cond_1

    .line 116
    :cond_0
    iput v3, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 117
    iput v3, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 118
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 121
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    const-string v2, "location_service.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v0, xml:Ljava/io/File;
    iget v1, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mMode:I

    if-ne v1, v3, :cond_2

    .line 124
    invoke-direct {p0, v0}, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->generateXml(Ljava/io/File;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->readXml(Ljava/io/File;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "fileLength"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, response:Landroid/content/Intent;
    iget v1, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 286
    new-instance v0, Landroid/content/Intent;

    .end local v0           #response:Landroid/content/Intent;
    const-string v1, "android.intent.action.RESPONSE_BACKUP_LOCATIONSERVICEVZW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v0       #response:Landroid/content/Intent;
    :goto_0
    const-string v1, "RESULT"

    iget v2, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mResult:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v1, "ERR_CODE"

    iget v2, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 293
    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    return-void

    .line 288
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #response:Landroid/content/Intent;
    const-string v1, "android.intent.action.RESPONSE_RESTORE_LOCATIONSERVICEVZW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #response:Landroid/content/Intent;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
