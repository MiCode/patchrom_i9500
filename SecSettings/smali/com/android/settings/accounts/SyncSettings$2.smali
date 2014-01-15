.class Lcom/android/settings_ex/accounts/SyncSettings$2;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/SyncSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/SyncSettings;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings_ex/accounts/SyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/SyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/accounts/SyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/SyncSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 134
    return-void
.end method
