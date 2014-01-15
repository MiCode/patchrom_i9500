.class Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$2;
.super Ljava/lang/Object;
.source "SafetyZoneSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$2;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    iput-object p2, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$2;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #getter for: Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$200(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$2;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    iput-object v3, v0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$2;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #setter for: Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;
    invoke-static {v0, v3}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$402(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;Landroid/content/Intent;)Landroid/content/Intent;

    .line 258
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$102(I)I

    .line 259
    return-void
.end method
