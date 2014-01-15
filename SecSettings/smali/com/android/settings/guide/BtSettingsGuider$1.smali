.class Lcom/android/settings_ex/guide/BtSettingsGuider$1;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$1;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$1;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 252
    return-void
.end method
