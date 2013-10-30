.class public Lcom/nuance/swype/connect/util/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;
    }
.end annotation


# instance fields
.field private client:Lcom/nuance/swype/connect/ConnectClient;

.field private final messageBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/connect/util/StatusBarNotification;Lcom/nuance/swype/connect/ConnectClient;)Lcom/nuance/swype/connect/ConnectClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/nuance/swype/connect/util/StatusBarNotification;->client:Lcom/nuance/swype/connect/ConnectClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/util/StatusBarNotification;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/swype/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/util/StatusBarNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nuance/swype/connect/util/StatusBarNotification;->send()V

    return-void
.end method

.method private send()V
    .locals 3

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/swype/connect/util/StatusBarNotification;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/nuance/swype/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 15
    return-void
.end method
