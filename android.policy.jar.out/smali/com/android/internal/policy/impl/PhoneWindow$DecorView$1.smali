.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field final synthetic val$bLocationChange:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->val$bLocationChange:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v8, 0x834

    const/16 v10, 0x37

    const/4 v9, 0x0

    .line 2541
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2542
    .local v2, token:Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v4, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2543
    .local v4, winType:I
    if-eq v4, v8, :cond_0

    const/16 v7, 0x836

    if-ne v4, v7, :cond_1

    .line 2545
    :cond_0
    if-ne v4, v8, :cond_4

    .line 2546
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v7

    const/16 v8, 0x835

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2552
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2556
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v0

    .line 2557
    .local v0, ctx:Landroid/content/Context;
    instance-of v7, v0, Landroid/app/Activity;

    if-nez v7, :cond_2

    instance-of v7, v0, Landroid/content/ContextWrapper;

    if-eqz v7, :cond_2

    .line 2558
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0           #ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2560
    .restart local v0       #ctx:Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_3

    instance-of v7, v0, Landroid/app/Activity;

    if-eqz v7, :cond_3

    move-object v7, v0

    .line 2561
    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2562
    .local v1, root:Landroid/view/View;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v5

    .line 2563
    .local v5, windowMode:I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2564
    .local v3, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 2566
    .local v6, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_3

    move-object v6, v3

    .line 2567
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 2568
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_3

    sget v7, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    if-eq v5, v7, :cond_3

    .line 2570
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2574
    .end local v1           #root:Landroid/view/View;
    .end local v3           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #windowMode:I
    .end local v6           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->val$bLocationChange:Z

    if-eqz v7, :cond_5

    .line 2575
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->val$view:Landroid/view/View;

    invoke-virtual {v7, v8, v10, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2583
    :goto_1
    return-void

    .line 2549
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v7

    const/16 v8, 0x837

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    goto :goto_0

    .line 2578
    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v7

    invoke-virtual {v7, v2, v10, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_1
.end method
