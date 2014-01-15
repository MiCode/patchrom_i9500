.class Lcom/android/settings_ex/ModePreviewTablet$1;
.super Ljava/lang/Object;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ModePreviewTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ModePreviewTablet;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ModePreviewTablet;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    #getter for: Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings_ex/ModePreviewTablet;->access$000(Lcom/android/settings_ex/ModePreviewTablet;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    #getter for: Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings_ex/ModePreviewTablet;->access$000(Lcom/android/settings_ex/ModePreviewTablet;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    #calls: Lcom/android/settings_ex/ModePreviewTablet;->setEnabledItems(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/ModePreviewTablet;->access$100(Lcom/android/settings_ex/ModePreviewTablet;Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    #getter for: Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings_ex/ModePreviewTablet;->access$200(Lcom/android/settings_ex/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    #getter for: Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings_ex/ModePreviewTablet;->access$000(Lcom/android/settings_ex/ModePreviewTablet;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    #calls: Lcom/android/settings_ex/ModePreviewTablet;->setEnabledItems(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ModePreviewTablet;->access$100(Lcom/android/settings_ex/ModePreviewTablet;Z)V

    .line 148
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method
