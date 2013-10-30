.class public abstract Lcom/touchtype/personalizer/Personalizer;
.super Ljava/lang/Object;
.source "Personalizer.java"

# interfaces
.implements Lcom/touchtype/personalizer/PersonalizerInterface;


# static fields
.field public static final API_BUSY:I = 0x2

.field public static final API_FAIL:I = 0x1

.field public static final API_SUCCESS:I = 0x0

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INSTALLER_PACKAGE:Ljava/lang/String; = "packagename"

.field public static final MODELNAME:Ljava/lang/String; = "modelname"

.field public static final PARAMS:Ljava/lang/String; = "params"

.field public static final SERVICEID:Ljava/lang/String; = "serviceid"

.field public static final SERVICENAME:Ljava/lang/String; = "name"

.field public static final SERVICEPATH:Ljava/lang/String; = "path"

.field public static final SERVICE_CONTACTS:I = 0x6

.field public static final SERVICE_DELETE_REMOTE:I = 0x7

.field public static final SERVICE_FACEBOOK:I = 0x1

.field public static final SERVICE_GMAIL:I = 0x2

.field public static final SERVICE_LIST:[I = null

.field public static final SERVICE_RENREN:I = 0x9

.field public static final SERVICE_RSS:I = 0x4

.field public static final SERVICE_SMS:I = 0x5

.field public static final SERVICE_TWITTER:I = 0x3

.field public static final SERVICE_WEIBO:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Personalizer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

.field private mInstallationId:Ljava/lang/String;

.field protected m_parentContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/touchtype/personalizer/Personalizer;->SERVICE_LIST:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/touchtype/personalizer/Personalizer;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/touchtype/personalizer/InstallationId;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mInstallationId:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mInstallationId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "Personalizer"

    const-string v1, "mInstallationId == null"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method private getDownloadFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizationRequest;->stop()V

    .line 103
    :cond_0
    return-void
.end method

.method public createConfigFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/touchtype/personalizer/Personalizer;->getDownloadFolder()Ljava/io/File;

    move-result-object v3

    const-string v4, ".config"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 93
    .local v1, out:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"models\" : [{\"path\" : \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getModelFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \"type\" : \"dynamic-term\"}]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, configFile:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 97
    return-void
.end method

.method public deleteLm()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getDownloadPath()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 107
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/touchtype/personalizer/Personalizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDownloadPath()Ljava/io/File;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/touchtype/personalizer/Personalizer;->getDownloadFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getModelFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getModelFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getServicePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dynamic.lm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startPersonalization(Ljava/lang/String;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 70
    const-string v1, "Personalizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting personalization with params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/touchtype/personalizer/Personalizer;->mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/touchtype/personalizer/Personalizer;->mCurrentRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->stop()V

    .line 76
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/touchtype/personalizer/Personalizer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/touchtype/personalizer/Personalizer;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "path"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getServicePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "modelname"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getModelFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "serviceid"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/touchtype/personalizer/Personalizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    return-void
.end method
