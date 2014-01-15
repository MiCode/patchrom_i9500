.class public Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;
.super Landroid/app/Fragment;
.source "ChooseLockMotion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockMotionFragment"
.end annotation


# static fields
.field private static final ANIMATION_DEALY:I = 0x1f4

.field private static final CHANGE_ANIMATION:I = 0x66

.field public static final CONFIRM_EXISTING_REQUEST:I = 0x37

.field private static final LAST_ANIMATION_DEALY:I = 0x7d0

.field private static final LAST_ANIMATION_INDEX:I = 0x0

.field private static final MAX_ANIMATION_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ChooseLockMotionFragment"

.field private static final mAnimationImage:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mContentTextView:Landroid/widget/TextView;

.field private mOKButton:Landroid/widget/Button;

.field private mTryTutorialButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationImage:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd0t 0x2t 0x2t 0x7ft
        0xd1t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 77
    new-instance v0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "ChooseLockMotionFragment"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    .line 208
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "ChooseLockMotionFragment"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 183
    const-string v0, "ChooseLockMotionFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    .line 189
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->stopAnimation()V

    .line 193
    iget v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 169
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 170
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.tilttounlock.TILTTOUNLOCKTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 119
    const v4, 0x7f040029

    invoke-virtual {p1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 121
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b0066

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 122
    const v4, 0x7f0b0065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mContentTextView:Landroid/widget/TextView;

    .line 123
    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    .line 124
    const v4, 0x7f0b0052

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    .line 125
    const v4, 0x7f0b0067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    .line 127
    const-string v2, ". "

    .line 128
    .local v2, dot:Ljava/lang/String;
    const-string v4, "ja"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const-string v2, " "

    .line 131
    :cond_0
    const v4, 0x7f090c30

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, content_string:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "confirm_credentials"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 144
    .local v0, confirmCredentials:Z
    if-nez p3, :cond_1

    .line 145
    if-eqz v0, :cond_2

    .line 146
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v7, v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 153
    :cond_1
    :goto_0
    return-object v3

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->stopAnimation()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 91
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "ChooseLockMotionFragment"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 107
    return-void
.end method
