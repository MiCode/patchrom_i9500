.class Lcom/android/settings_ex/NotificationPanelMenu$4;
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
    .line 146
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu$4;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 149
    const/4 v1, 0x1

    .line 150
    .local v1, retVal:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 152
    .local v0, dragEvent:I
    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    :pswitch_0
    return v1

    .line 154
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/NotificationPanelMenu$4;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #calls: Lcom/android/settings_ex/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/settings_ex/NotificationPanelMenu;->access$600(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/view/View;)V

    .line 155
    iget-object v2, p0, Lcom/android/settings_ex/NotificationPanelMenu$4;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #calls: Lcom/android/settings_ex/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v2}, Lcom/android/settings_ex/NotificationPanelMenu;->access$500(Lcom/android/settings_ex/NotificationPanelMenu;)V

    goto :goto_0

    .line 159
    :pswitch_2
    const/high16 v2, 0x3f80

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 167
    :pswitch_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
