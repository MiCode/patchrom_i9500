.class Lcom/android/settings_ex/NotificationPanelMenu$2;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/NotificationPanelMenu;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu$2;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu$2;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    new-instance v1, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;

    iget-object v2, p0, Lcom/android/settings_ex/NotificationPanelMenu$2;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    invoke-direct {v1, v2, p1}, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;-><init>(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/view/View;)V

    #setter for: Lcom/android/settings_ex/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/settings_ex/NotificationPanelMenu;->access$102(Lcom/android/settings_ex/NotificationPanelMenu;Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;)Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu$2;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #getter for: Lcom/android/settings_ex/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;
    invoke-static {v0}, Lcom/android/settings_ex/NotificationPanelMenu;->access$100(Lcom/android/settings_ex/NotificationPanelMenu;)Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v0, v3, v1}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu$2;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #setter for: Lcom/android/settings_ex/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/settings_ex/NotificationPanelMenu;->access$202(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/view/View;)Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu$2;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #getter for: Lcom/android/settings_ex/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/NotificationPanelMenu;->access$200(Lcom/android/settings_ex/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method
