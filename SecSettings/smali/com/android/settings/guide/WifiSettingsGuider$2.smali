.class Lcom/android/settings_ex/guide/WifiSettingsGuider$2;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$2;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$2;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 223
    return-void
.end method
