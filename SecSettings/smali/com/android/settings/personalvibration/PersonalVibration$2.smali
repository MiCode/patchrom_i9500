.class Lcom/android/settings_ex/personalvibration/PersonalVibration$2;
.super Ljava/lang/Object;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/personalvibration/PersonalVibration;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$2;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iput-object p2, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$2;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    #getter for: Lcom/android/settings_ex/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/personalvibration/PersonalVibration;->access$100(Lcom/android/settings_ex/personalvibration/PersonalVibration;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$2;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 316
    return-void
.end method
