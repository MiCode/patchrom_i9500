.class Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender$1;
.super Landroid/os/Handler;
.source "AdsLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;


# direct methods
.method constructor <init>(Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender$1;->this$0:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    .line 105
    .local v0, what:I
    return-void
.end method
