.class Lcom/android/settings_ex/CryptKeeper$1;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$1;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    :pswitch_0
    return-void

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$1;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #calls: Lcom/android/settings_ex/CryptKeeper;->updateProgress()V
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$800(Lcom/android/settings_ex/CryptKeeper;)V

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$1;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #calls: Lcom/android/settings_ex/CryptKeeper;->notifyUser()V
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$900(Lcom/android/settings_ex/CryptKeeper;)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
