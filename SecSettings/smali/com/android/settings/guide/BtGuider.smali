.class final Lcom/android/settings_ex/guide/BtGuider;
.super Lcom/android/settings_ex/guide/ListGuiderBase;
.source "BtGuider.java"


# static fields
.field private static final POSITION_IN_SETTINGS_LIST:I = 0x2


# instance fields
.field private mBTEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/ListGuiderBase;-><init>(Landroid/app/Activity;)V

    .line 26
    iput-boolean v1, p0, Lcom/android/settings_ex/guide/BtGuider;->mBTEnabled:Z

    .line 30
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 31
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/guide/BtGuider;->mBTEnabled:Z

    .line 32
    return-void
.end method


# virtual methods
.method public isHotSpotEnabled()Z
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 111
    .local v0, mTetheredData:I
    const/4 v1, 0x0

    return v1
.end method

.method public showHelpDialog(Z)V
    .locals 6
    .parameter "isBluetoothOn"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings_ex/guide/GuiderBase;->showHelpDialog(Z)V

    .line 40
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    :goto_0
    if-ne v3, v2, :cond_2

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 40
    :cond_1
    sget-object v2, Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    goto :goto_0

    .line 45
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/guide/GuideModeHelper;->switchMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    :goto_2
    iput-object v2, p0, Lcom/android/settings_ex/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/app/ListActivity;

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 55
    .local v1, list:Landroid/widget/ListView;
    new-instance v2, Lcom/android/settings_ex/guide/BtGuider$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/guide/BtGuider$1;-><init>(Lcom/android/settings_ex/guide/BtGuider;Landroid/widget/ListView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    if-eqz p1, :cond_7

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/BtGuider;->isHotSpotEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04007f

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, guideView:Landroid/view/View;
    :goto_3
    invoke-super {p0, v0}, Lcom/android/settings_ex/guide/GuiderBase;->showDialog(Landroid/view/View;)V

    goto :goto_1

    .line 50
    .end local v0           #guideView:Landroid/view/View;
    .end local v1           #list:Landroid/widget/ListView;
    :cond_4
    sget-object v2, Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings_ex/guide/ListGuiderBase$GuideStates;

    goto :goto_2

    .line 69
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_5
    const-string v2, "VZW"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040080

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_3

    .line 75
    .end local v0           #guideView:Landroid/view/View;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04007e

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_3

    .line 79
    .end local v0           #guideView:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/BtGuider;->isHotSpotEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04007c

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_3

    .line 82
    .end local v0           #guideView:Landroid/view/View;
    :cond_8
    const-string v2, "VZW"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04007d

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_3

    .line 88
    .end local v0           #guideView:Landroid/view/View;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04007b

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_3
.end method
