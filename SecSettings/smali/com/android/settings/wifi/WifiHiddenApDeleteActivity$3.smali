.class Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$100(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    .line 109
    .local v1, isChecked:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$100(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 113
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$200(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$300(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #index:I
    .end local v1           #isChecked:Z
    :cond_0
    move v1, v4

    .line 108
    goto :goto_0

    .line 117
    .restart local v0       #index:I
    .restart local v1       #isChecked:Z
    :cond_1
    if-eqz v1, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$500(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->enableOpacity:F
    invoke-static {v4}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$400(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$600(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    :goto_2
    return-void

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$500(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->disableOpacity:F
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$700(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$600(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method
