.class Landroid/widget/FHoverPopupWindow$2;
.super Landroid/os/Handler;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/FHoverPopupWindow;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/FHoverPopupWindow;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$2;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 163
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$2;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v0, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "FHoverPopupWindow"

    const-string v1, "***** mDismissHandler handleMessage *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$2;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$2;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 169
    const-string v0, "FHoverPopupWindow"

    const-string v1, "mDismissHandler handleMessage: Call dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$2;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 173
    :cond_1
    return-void
.end method
