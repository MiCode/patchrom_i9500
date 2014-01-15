.class Lcom/android/settings_ex/guide/ListGuiderBase;
.super Lcom/android/settings_ex/guide/GuiderBase;
.source "ListGuiderBase.java"

# interfaces
.implements Lcom/android/settings_ex/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;
    }
.end annotation


# instance fields
.field mShowedDialog:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    .line 41
    instance-of v0, p1, Landroid/app/ListActivity;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting ListActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    .line 107
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0}, Lcom/android/settings_ex/guide/GuiderBase;->finish()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 125
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_0

    move-object v1, v2

    .line 127
    .local v1, list:Landroid/widget/ListView;
    :goto_0
    if-nez v1, :cond_1

    .line 138
    :goto_1
    return-void

    .line 125
    .end local v1           #list:Landroid/widget/ListView;
    :cond_0
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    .line 131
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings_ex/guide/OnInternalSwitcherListener;)V

    .line 137
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 112
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/ListGuiderBase;->showHelpDialog()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/ListGuiderBase;->finish()V

    .line 55
    iput-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 59
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 65
    .local v1, list:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v4, 0x6f

    .line 180
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 181
    .local v0, action:I
    const/4 v2, 0x0

    .line 183
    .local v2, retval:Z
    const/16 v3, 0x42

    if-eq p1, v3, :cond_0

    const/16 v3, 0x17

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, focus:Landroid/view/View;
    if-nez v0, :cond_4

    .line 192
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 202
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 205
    .end local v1           #focus:Landroid/view/View;
    :cond_3
    return v2

    .line 194
    .restart local v1       #focus:Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 196
    :cond_5
    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 176
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v3, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings_ex/guide/OnInternalSwitcherListener;)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 156
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 158
    .local v1, list:Landroid/widget/ListView;
    :goto_0
    if-nez v1, :cond_2

    .line 163
    :goto_1
    return-void

    .line 156
    .end local v1           #list:Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    .line 162
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 117
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 73
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 75
    .local v1, list:Landroid/widget/ListView;
    :goto_0
    if-nez v1, :cond_1

    .line 95
    :goto_1
    return-void

    .line 73
    .end local v1           #list:Landroid/widget/ListView;
    :cond_0
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    .line 80
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/guide/GuiderBase;->showHelpDialog(Z)V

    .line 82
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings_ex/guide/OnInternalSwitcherListener;)V

    .line 85
    :cond_2
    new-instance v2, Lcom/android/settings_ex/guide/ListGuiderBase$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/guide/ListGuiderBase$1;-><init>(Lcom/android/settings_ex/guide/ListGuiderBase;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1
.end method

.method public setEnabler(Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;)V
    .locals 1
    .parameter "enabler"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings_ex/guide/OnInternalSwitcherListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method public showHelpDialog()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/GuiderBase;->showHelpDialog(Z)V

    .line 171
    :cond_0
    return-void
.end method
