.class Lcom/android/settings_ex/DockSettings$3;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DockSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DockSettings;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/settings_ex/DockSettings$3;->this$0:Lcom/android/settings_ex/DockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings_ex/DockSettings$3;->this$0:Lcom/android/settings_ex/DockSettings;

    #getter for: Lcom/android/settings_ex/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DockSettings;->access$300(Lcom/android/settings_ex/DockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 383
    return-void
.end method
