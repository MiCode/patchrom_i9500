.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$4;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->showListUpdateGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->access$202(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Z)Z

    .line 321
    return-void
.end method
