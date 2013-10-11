.class Lcom/android/internal/telephony/WapPushOverSms$1;
.super Landroid/content/BroadcastReceiver;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 945
    const-string v6, "WAP PUSH"

    const-string v7, "Received blocked mms intent"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v6, "com.android.server.enterprise.restriction.SEND_BLOCKED_MMS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 948
    const-string v6, "extra_pdu"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 949
    .local v2, pdu:[B
    iget-object v6, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    .line 951
    .local v3, result:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 952
    const-string v6, "extra_orig_address"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, origAddress:Ljava/lang/String;
    const-string v6, "extra_time_stamp"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, timeStamp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .local v5, wapSms:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_1

    .line 956
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    .line 957
    aget-byte v6, v2, v0

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 960
    iget-object v6, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {v6}, Lcom/android/internal/telephony/WapPushOverSms;->access$200(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v1, v4, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 966
    .end local v0           #i:I
    .end local v1           #origAddress:Ljava/lang/String;
    .end local v2           #pdu:[B
    .end local v3           #result:I
    .end local v4           #timeStamp:Ljava/lang/String;
    .end local v5           #wapSms:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method
