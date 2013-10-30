.class public abstract Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
.super Ljava/lang/Object;
.source "MessageCatalog.java"


# static fields
.field private static INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 21
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    if-nez v1, :cond_0

    .line 22
    const-string v1, "java.util.ResourceBundle"

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :try_start_0
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.ResourceBundleCatalog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    sput-object v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->getLocalizedMessage(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_1

    .line 30
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    :try_start_1
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    sput-object v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_1
.end method


# virtual methods
.method protected abstract getLocalizedMessage(I)Ljava/lang/String;
.end method
