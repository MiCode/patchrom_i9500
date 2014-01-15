.class public Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "NotificationPanelMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanelDragShadowBuilder"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mPanel:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings_ex/NotificationPanelMenu;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    .line 519
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 520
    const v0, 0x7f0b0312

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    .line 521
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    .line 527
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 528
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f02037f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 532
    return-void
.end method

.method public restoreOriginalImage()V
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 536
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f02037d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 543
    :cond_1
    return-void
.end method
