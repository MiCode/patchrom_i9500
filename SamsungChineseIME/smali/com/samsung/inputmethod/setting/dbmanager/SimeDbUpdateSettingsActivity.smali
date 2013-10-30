.class public Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateSettingsActivity;
.super Landroid/app/Activity;
.source "SimeDbUpdateSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    new-instance v3, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;

    invoke-direct {v3}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 20
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 21
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 24
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 30
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateSettingsActivity;->finish()V

    .line 31
    const/4 v0, 0x1

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
