.class public Lcom/android/settings_ex/motion2013/AirScrollTutorial;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AirScrollTutorial.java"


# static fields
.field private static final LIST_ITEM:Ljava/lang/String; = "List item "

.field private static final NUMBER_OF_LIST_ITEM:I = 0x14

.field private static final TAG:Ljava/lang/String; = "AirScrollTutorial"


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollTutorial;->mListView:Landroid/widget/ListView;

    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 34
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 36
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/16 v3, 0x14

    if-gt v1, v3, :cond_0

    .line 37
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    .local v2, item:Landroid/preference/Preference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v2           #item:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollTutorial;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollTutorial;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->unregisterIRMotion()V

    .line 68
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollTutorial;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollTutorial;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->registerIRMotion()V

    .line 59
    :cond_0
    return-void
.end method
