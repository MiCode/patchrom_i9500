.class Lcom/android/settings_ex/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$600(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/EditPinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->showPinDialog()V

    .line 355
    return-void
.end method
