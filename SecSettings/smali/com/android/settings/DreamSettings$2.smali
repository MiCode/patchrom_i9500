.class Lcom/android/settings_ex/DreamSettings$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DreamSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$2;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 180
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, row:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$2;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->access$500(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DreamBackend$DreamInfo;

    #calls: Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/settings_ex/DreamBackend$DreamInfo;)V
    invoke-static {v3, v1}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->access$600(Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;Lcom/android/settings_ex/DreamBackend$DreamInfo;)V

    move v1, v2

    .line 185
    .end local v0           #row:Landroid/view/View;
    :goto_0
    return v1

    .restart local p1
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
