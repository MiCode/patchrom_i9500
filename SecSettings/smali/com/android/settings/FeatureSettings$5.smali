.class Lcom/android/settings_ex/FeatureSettings$5;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FeatureSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FeatureSettings;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/settings_ex/FeatureSettings$5;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings$5;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FeatureSettings;->access$700(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 878
    return-void
.end method
