.class Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;
.super Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;->getPinSync()[C
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    iput-object p2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancelled()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    #setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$202(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    .line 305
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    #setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 306
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 307
    return-void
.end method

.method public onUserEnteredPin([C)V
    .locals 2
    .parameter "pin"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    #setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    invoke-static {v0, p1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$202(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    .line 298
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    #setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 299
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 300
    return-void
.end method

.method public onUserPinError(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    #setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$202(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    .line 311
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    #setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 312
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 313
    return-void
.end method
