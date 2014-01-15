.class public Lcom/android/settings_ex/powersavingmode/PowerSavingModeTips;
.super Landroid/app/Fragment;
.source "PowerSavingModeTips.java"


# instance fields
.field private mSupportBrowser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingModeTips;->mSupportBrowser:Z

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 34
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const v32, 0x7f0400d4

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    .line 78
    .local v31, view:Landroid/view/View;
    const v32, 0x7f0b027b

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 79
    .local v27, mScreen:Landroid/widget/TextView;
    const v32, 0x7f0b027c

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 80
    .local v28, mScreenTip1:Landroid/widget/TextView;
    const v32, 0x7f0b027d

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 81
    .local v29, mScreenTip2:Landroid/widget/TextView;
    const v32, 0x7f0b027e

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 82
    .local v30, mScreenTip3:Landroid/widget/TextView;
    const v32, 0x7f0b027f

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 83
    .local v11, mBrightness:Landroid/widget/TextView;
    const v32, 0x7f0b0280

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 84
    .local v12, mBrightnessTip1:Landroid/widget/TextView;
    const v32, 0x7f0b0281

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 85
    .local v13, mBrightnessTip2:Landroid/widget/TextView;
    const v32, 0x7f0b0282

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 86
    .local v7, mBluetooth:Landroid/widget/TextView;
    const v32, 0x7f0b0283

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 87
    .local v8, mBluetoothTip1:Landroid/widget/TextView;
    const v32, 0x7f0b0284

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 88
    .local v9, mBluetoothTip2:Landroid/widget/TextView;
    const v32, 0x7f0b0285

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 89
    .local v10, mBluetoothTip3:Landroid/widget/TextView;
    const v32, 0x7f0b0286

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 90
    .local v25, mMobileData:Landroid/widget/TextView;
    const v32, 0x7f0b0287

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 92
    .local v26, mMobileDataTip1:Landroid/widget/TextView;
    const v32, 0x7f0b0288

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 93
    .local v3, mAutoSync:Landroid/widget/TextView;
    const v32, 0x7f0b0289

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, mAutoSyncTip1:Landroid/widget/TextView;
    const v32, 0x7f0b028a

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 95
    .local v18, mGPS:Landroid/widget/TextView;
    const v32, 0x7f0b028b

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 96
    .local v19, mGPSTip2:Landroid/widget/TextView;
    const v32, 0x7f0b028c

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 97
    .local v20, mGPSTip3:Landroid/widget/TextView;
    const v32, 0x7f0b028d

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 98
    .local v23, mLiveWallpaper:Landroid/widget/TextView;
    const v32, 0x7f0b028e

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 148
    .local v24, mLiveWallpaperTip1:Landroid/widget/TextView;
    const v32, 0x7f0b0273

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 149
    .local v15, mCPUTipsTitle:Landroid/widget/TextView;
    const v32, 0x7f0b0274

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 150
    .local v14, mCPUTips:Landroid/widget/TextView;
    const v32, 0x7f0b0275

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 151
    .local v17, mDisplayTipsTitle:Landroid/widget/TextView;
    const v32, 0x7f0b0276

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 153
    .local v16, mDisplayTips:Landroid/widget/TextView;
    const v32, 0x7f0b0277

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 154
    .local v6, mBackgroundTipsTitle:Landroid/widget/TextView;
    const v32, 0x7f0b0278

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 155
    .local v5, mBackgroundTips:Landroid/widget/TextView;
    const v32, 0x7f0b0279

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 156
    .local v22, mHapticTipsTitle:Landroid/widget/TextView;
    const v32, 0x7f0b027a

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 158
    .local v21, mHapticTips:Landroid/widget/TextView;
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    const/16 v32, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const/16 v32, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const/16 v32, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    const/16 v32, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const v32, 0x7f0b027c

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .end local v28           #mScreenTip1:Landroid/widget/TextView;
    check-cast v28, Landroid/widget/TextView;

    .line 169
    .restart local v28       #mScreenTip1:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b1d

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const v32, 0x7f0b027d

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #mScreenTip2:Landroid/widget/TextView;
    check-cast v29, Landroid/widget/TextView;

    .line 171
    .restart local v29       #mScreenTip2:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "2. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b1e

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v32, 0x7f0b027e

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #mScreenTip3:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 173
    .restart local v30       #mScreenTip3:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "3. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b1f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v32, 0x7f0b0280

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #mBrightnessTip1:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 176
    .restart local v12       #mBrightnessTip1:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b20

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const v32, 0x7f0b0281

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #mBrightnessTip2:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 178
    .restart local v13       #mBrightnessTip2:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "2. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b21

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v32, 0x7f0b0283

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #mBluetoothTip1:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 181
    .restart local v8       #mBluetoothTip1:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b22

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const v32, 0x7f0b0284

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #mBluetoothTip2:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 183
    .restart local v9       #mBluetoothTip2:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "2. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b23

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v32, 0x7f0b0285

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #mBluetoothTip3:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 185
    .restart local v10       #mBluetoothTip3:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "3. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b24

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v32, 0x7f0b0287

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .end local v26           #mMobileDataTip1:Landroid/widget/TextView;
    check-cast v26, Landroid/widget/TextView;

    .line 188
    .restart local v26       #mMobileDataTip1:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b27

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v32, 0x7f0b0289

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #mAutoSyncTip1:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 193
    .restart local v4       #mAutoSyncTip1:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b28

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v32, 0x7f0b028b

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #mGPSTip2:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 196
    .restart local v19       #mGPSTip2:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b2a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const v32, 0x7f0b028c

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #mGPSTip3:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 198
    .restart local v20       #mGPSTip3:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "2. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b2b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const v32, 0x7f0b028e

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .end local v24           #mLiveWallpaperTip1:Landroid/widget/TextView;
    check-cast v24, Landroid/widget/TextView;

    .line 201
    .restart local v24       #mLiveWallpaperTip1:Landroid/widget/TextView;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f090b2c

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-object v31
.end method
