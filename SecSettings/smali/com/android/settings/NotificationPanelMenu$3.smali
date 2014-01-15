.class Lcom/android/settings_ex/NotificationPanelMenu$3;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu$3;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 106
    const/4 v4, 0x1

    .line 107
    .local v4, retVal:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 109
    .local v0, dragEvent:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    .local v1, idx:I
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu$3;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #getter for: Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings_ex/NotificationPanelMenu;->access$300(Lcom/android/settings_ex/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 112
    .local v3, panelView:Landroid/view/View;
    const v5, 0x7f0b0313

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 114
    .local v2, panelBorder:Landroid/widget/LinearLayout;
    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 116
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu$3;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #calls: Lcom/android/settings_ex/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V
    invoke-static {v5, p1}, Lcom/android/settings_ex/NotificationPanelMenu;->access$400(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/view/View;)V

    .line 117
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu$3;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #calls: Lcom/android/settings_ex/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v5}, Lcom/android/settings_ex/NotificationPanelMenu;->access$500(Lcom/android/settings_ex/NotificationPanelMenu;)V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 128
    :pswitch_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 132
    :pswitch_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 133
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 134
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu$3;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #getter for: Lcom/android/settings_ex/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;
    invoke-static {v5}, Lcom/android/settings_ex/NotificationPanelMenu;->access$100(Lcom/android/settings_ex/NotificationPanelMenu;)Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu$3;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #getter for: Lcom/android/settings_ex/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;
    invoke-static {v5}, Lcom/android/settings_ex/NotificationPanelMenu;->access$100(Lcom/android/settings_ex/NotificationPanelMenu;)Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;->restoreOriginalImage()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
