.class Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$2;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;

.field final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;

    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$2;->val$chkPref:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$2;->val$chkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;

    #getter for: Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->access$000(Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$2;->val$id:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings_ex/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 172
    return-void
.end method
