.class Lcom/android/settings_ex/ModePreview$1;
.super Ljava/lang/Object;
.source "ModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ModePreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ModePreview;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ModePreview;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/ModePreview$1;->this$0:Lcom/android/settings_ex/ModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/ModePreview$1;->this$0:Lcom/android/settings_ex/ModePreview;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    iget-object v0, p0, Lcom/android/settings_ex/ModePreview$1;->this$0:Lcom/android/settings_ex/ModePreview;

    #getter for: Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings_ex/ModePreview;->access$000(Lcom/android/settings_ex/ModePreview;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ModePreview$1;->this$0:Lcom/android/settings_ex/ModePreview;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    iget-object v2, p0, Lcom/android/settings_ex/ModePreview$1;->this$0:Lcom/android/settings_ex/ModePreview;

    #getter for: Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings_ex/ModePreview;->access$100(Lcom/android/settings_ex/ModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/ModePreview$1;->this$0:Lcom/android/settings_ex/ModePreview;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 93
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
