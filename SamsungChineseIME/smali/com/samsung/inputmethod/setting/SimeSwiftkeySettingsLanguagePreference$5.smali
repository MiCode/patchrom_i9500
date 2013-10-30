.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$5;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->showDownloadGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$5;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$5;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->mIsCheckboxDontShowDownload:Z
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$602(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;Z)Z

    .line 401
    return-void
.end method
