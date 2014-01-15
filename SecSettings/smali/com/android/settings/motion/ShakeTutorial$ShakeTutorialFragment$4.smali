.class Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$4;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->showRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$4;->this$0:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$4;->this$0:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 278
    return-void
.end method
