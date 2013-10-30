.class Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;
.super Ljava/lang/Object;
.source "SimeSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->resetSetting(Landroid/content/SharedPreferences;)V

    .line 860
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->resetSetting()V

    .line 861
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    const/4 v1, 0x0

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setOneHandMode(Z)V
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->access$000(Lcom/samsung/inputmethod/setting/SimeSettingActivity;Z)V

    .line 862
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 863
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateWidgets()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    .line 864
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->access$200(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->access$200(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->access$300(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)I

    move-result v2

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingActivity;->SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V
    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingActivity;Landroid/preference/Preference;I)V

    .line 870
    :cond_0
    return-void
.end method
