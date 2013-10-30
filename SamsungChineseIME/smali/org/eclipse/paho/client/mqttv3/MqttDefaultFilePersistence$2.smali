.class Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence$2;
.super Ljava/lang/Object;
.source "MqttDefaultFilePersistence.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->restoreBackups(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence$2;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".bup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
