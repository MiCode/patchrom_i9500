.class public Lcom/android/settings_ex/fmm/RemoteControls$FragmentAccount;
.super Landroid/preference/PreferenceFragment;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentAccount"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 270
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 271
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 274
    :cond_0
    const v2, 0x7f070035

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 275
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 277
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, AccountRegist:Landroid/preference/PreferenceCategory;
    const v2, 0x7f090a45

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 279
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    return-void
.end method
