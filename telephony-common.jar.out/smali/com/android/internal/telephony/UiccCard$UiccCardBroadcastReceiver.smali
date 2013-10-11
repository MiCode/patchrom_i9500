.class Lcom/android/internal/telephony/UiccCard$UiccCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccCardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/UiccCard;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/UiccCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/UiccCard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/UiccCard;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "status"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, iccStatus:Ljava/lang/String;
    const-string v2, "RIL_UiccCard"

    const-string v3, "Receive com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v2, "INSERTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "RIL_UiccCard"

    const-string v3, "Receive ICC_CARD_STATE_CHANGED INSERTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/UiccCard;

    const/4 v3, 0x1

    #calls: Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Z)V

    .line 115
    .end local v1           #iccStatus:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v1       #iccStatus:Ljava/lang/String;
    :cond_1
    const-string v2, "REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "RIL_UiccCard"

    const-string v3, "Receive ICC_CARD_STATE_CHANGED REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/UiccCard;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Z)V

    goto :goto_0
.end method
