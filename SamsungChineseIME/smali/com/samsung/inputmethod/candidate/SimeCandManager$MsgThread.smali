.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;
.super Landroid/os/Handler;
.source "SimeCandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgThread"
.end annotation


# static fields
.field public static final MSG_TOOLBAR_CHANGE_LAYOUT:I


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setToolbarLayout()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
