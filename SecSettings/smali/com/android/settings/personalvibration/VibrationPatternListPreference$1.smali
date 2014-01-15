.class Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference$1;
.super Ljava/lang/Object;
.source "VibrationPatternListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference$1;->this$0:Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference$1;->this$0:Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;
    invoke-static {v0, v1}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->access$002(Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;)Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference$1;->this$0:Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mOkButtonClicked:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->access$102(Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;Z)Z

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference$1;->this$0:Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->restartLater()V

    .line 136
    return-void
.end method
