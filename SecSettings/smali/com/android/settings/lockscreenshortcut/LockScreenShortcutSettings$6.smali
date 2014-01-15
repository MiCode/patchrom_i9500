.class Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const v2, 0x7f0203b4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 908
    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    .line 909
    .local v0, dv:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 957
    :goto_0
    return v4

    .line 911
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 912
    invoke-virtual {v0}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 913
    invoke-virtual {v0}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->startTrashCanFillUnfillAnimation()V

    .line 914
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;->setShadowVisibility(Z)V

    .line 916
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$300(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v2}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02052c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v2, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v2}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v2

    #calls: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$1000(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;I)V

    .line 920
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #calls: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$1100(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)V

    .line 921
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #calls: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$1200(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)V

    .line 922
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$1302(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    .line 923
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v2, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v2}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$1300(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v2

    #calls: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$1400(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;Z)V

    .line 924
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v1, v3}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$1302(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    goto :goto_0

    .line 929
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;->releaseSurface()V

    .line 933
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 934
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->setVisibility(I)V

    goto/16 :goto_0

    .line 938
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 939
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 941
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->startTrashCanShakeAnimation()V

    .line 942
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 946
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 947
    iget-object v1, p0, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings_ex/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 949
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 950
    invoke-virtual {v0}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->setNormalTrashIcon()V

    .line 951
    const v1, 0x7f0203b5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
