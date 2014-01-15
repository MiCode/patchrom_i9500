.class public Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MSG_SHOW_ERROR:I = 0x1

.field static final RESULT_FINISHED:I = 0x1

.field private static final THRESHOLD_OF_LOOP_CHAR:I = 0x3

.field private static final THRESHOLD_OF_SEQUENTIAL_CHAR:I = 0x4

.field private static final mAlphas:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final mNumbers:Ljava/lang/String; = "0123456789"

.field private static final mReverseAlphas:Ljava/lang/String; = "zyxwvutsrqponmlkjihgfedcba"

.field private static final mReverseNumbers:Ljava/lang/String; = "9876543210"


# instance fields
.field private cacCardLocked:Z

.field private cacRegistrationComplete:Z

.field private cacRegistrationError:Z

.field private cacRegistrationResult:Ljava/lang/String;

.field clickedEmergencyCall:Z

.field private hasPwdPatternRestriction:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCacChosen:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field mDialog:Landroid/app/ProgressDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPassword:Ljava/lang/String;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRequestedQuality:I

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private userCancelledPwdChange:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 159
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 160
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 161
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 162
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 163
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 164
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 165
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 166
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 169
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 171
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 185
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    .line 191
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    .line 199
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->userCancelledPwdChange:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 207
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 223
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    return-void
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 740
    const/4 v2, 0x0

    .line 742
    .local v2, nLoop:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 743
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 744
    .local v0, beforeChar:C
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 745
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 747
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 748
    const-string v4, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .end local v0           #beforeChar:C
    .end local v1           #i:I
    :goto_2
    return v3

    .line 746
    .restart local v0       #beforeChar:C
    .restart local v1       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 751
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #beforeChar:C
    .end local v1           #i:I
    :cond_2
    move v3, v4

    .line 754
    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    .line 716
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 717
    .local v1, maxLoop:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 718
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, pattern:Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, reversePattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :goto_1
    return v4

    .line 717
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #reversePattern:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 727
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 728
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 729
    .restart local v2       #pattern:Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 730
    .restart local v3       #reversePattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 731
    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 727
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 736
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 1177
    monitor-enter p0

    .line 1178
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1181
    :cond_0
    monitor-exit p0

    .line 1182
    return-void

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private executeCacRegistration(Ljava/lang/String;)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 900
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 999
    return-void
.end method

.method private getDeviceOrientation()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 870
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 871
    .local v1, orientation:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 872
    .local v2, rotation:I
    const/4 v0, -0x1

    .line 876
    .local v0, actual_orientation:I
    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_2

    .line 879
    :cond_0
    const/4 v0, 0x0

    .line 896
    :cond_1
    :goto_0
    return v0

    .line 880
    :cond_2
    if-ne v1, v4, :cond_4

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_4

    .line 883
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 884
    :cond_4
    if-ne v1, v5, :cond_6

    if-eq v2, v5, :cond_5

    if-ne v2, v6, :cond_6

    .line 887
    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    .line 889
    :cond_6
    if-ne v1, v4, :cond_1

    if-eq v2, v5, :cond_7

    if-ne v2, v6, :cond_1

    .line 892
    :cond_7
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private handleNext()V
    .locals 15

    .prologue
    const/4 v0, 0x1

    const/4 v14, 0x0

    .line 760
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 761
    .local v10, pin:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    const/4 v6, 0x0

    .line 765
    .local v6, errorMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    .line 766
    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage Introduction: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-boolean v14, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    .line 768
    invoke-direct {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 769
    if-nez v6, :cond_2

    .line 770
    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 771
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 773
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 858
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 859
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v6, v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 861
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Changing/creating screen lock password failed"

    move v1, v0

    move v2, v14

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_d

    .line 776
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 777
    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-ne v1, v0, :cond_5

    .line 778
    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-ne v1, v0, :cond_4

    .line 779
    const-string v0, "ChooseLockPassword"

    const-string v1, "Stage confirm cac pin failed: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 782
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 786
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    if-nez v1, :cond_5

    .line 787
    const-string v0, "ChooseLockPassword"

    const-string v1, "Stage confirm cac pin to be executed: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-direct {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 793
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 795
    .local v8, isFallback:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.signature_fallback"

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 799
    .local v9, isSignature:Z
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 800
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd(Z)V

    .line 806
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v1, v10, v2, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZ)V

    .line 809
    if-nez v8, :cond_6

    if-nez v9, :cond_6

    .line 810
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 811
    .local v13, warningClearIntent:Landroid/content/Intent;
    const-string v1, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 818
    .end local v13           #warningClearIntent:Landroid/content/Intent;
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 819
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_smpw_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 826
    :goto_3
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-static {v1, v14, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 829
    .local v11, sender:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 830
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v1, v14}, Landroid/app/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 834
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 835
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_face_with_voice"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 840
    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 842
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Changing/creating screen lock password succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 802
    .end local v7           #intent:Landroid/content/Intent;
    .end local v11           #sender:Landroid/app/PendingIntent;
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    goto/16 :goto_2

    .line 821
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_smpw_key"

    invoke-static {v1, v2, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 837
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v11       #sender:Landroid/app/PendingIntent;
    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_face_with_voice"

    invoke-static {v1, v2, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 846
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #isFallback:Z
    .end local v9           #isSignature:Z
    .end local v11           #sender:Landroid/app/PendingIntent;
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 847
    .local v12, tmp:Ljava/lang/CharSequence;
    if-eqz v12, :cond_c

    move-object v1, v12

    .line 848
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v14, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 850
    :cond_c
    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_1

    .line 854
    .end local v12           #tmp:Ljava/lang/CharSequence;
    :cond_d
    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_2

    .line 855
    invoke-direct {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private reenableStatusBar()V
    .locals 2

    .prologue
    .line 1185
    monitor-enter p0

    .line 1186
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    .line 1187
    iget v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1191
    :cond_0
    monitor-exit p0

    .line 1192
    return-void

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    const/4 v3, 0x1

    .line 1063
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1066
    .local v0, mesg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1068
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1087
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1088
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 1090
    .local v1, length:I
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_2

    .line 1091
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v4

    const/4 v7, 0x2

    if-ge v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1093
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1100
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_8

    if-lez v1, :cond_8

    .line 1102
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    if-nez v4, :cond_3

    .line 1103
    const-string v4, "ChooseLockPassword"

    const-string v7, "CAC registration not locked: "

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v4, :cond_3

    .line 1106
    const-string v4, "ChooseLockPassword"

    const-string v6, "CAC registration not locked enable next: "

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1108
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 1109
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1152
    :goto_1
    return-void

    .line 1096
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1097
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 1114
    :cond_3
    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-nez v4, :cond_6

    .line 1115
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_5

    const v4, 0x7f0901dc

    :goto_2
    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1151
    .end local v2           #msg:Ljava/lang/String;
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1115
    :cond_5
    const v4, 0x7f0901dd

    goto :goto_2

    .line 1120
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1122
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 1126
    :cond_7
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    if-nez v4, :cond_4

    .line 1127
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0901de

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1128
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 1135
    .end local v0           #error:Ljava/lang/String;
    :cond_8
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v4, :cond_a

    .line 1136
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_9

    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-ne v4, v5, :cond_9

    .line 1137
    const-string v4, "ChooseLockPassword"

    const-string v7, "CAC registration error back to Select: "

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    :goto_4
    iput-boolean v6, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    .line 1149
    :goto_5
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_c

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 1141
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->cacNumeric:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 1146
    :cond_a
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_7
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_7

    :cond_c
    move v4, v6

    .line 1149
    goto :goto_6
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "password"

    .prologue
    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 575
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-nez v12, :cond_6

    .line 576
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v12, :cond_2

    .line 577
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 578
    const v12, 0x7f090d17

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 710
    :goto_0
    return-object v12

    .line 579
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/app/enterprise/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 580
    const v12, 0x7f0901e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 582
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 587
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    if-eqz v12, :cond_6

    .line 588
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 589
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_3

    const v12, 0x7f090d19

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_3
    const v12, 0x7f090d1b

    goto :goto_1

    .line 593
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 594
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_5

    const v12, 0x7f090d18

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_5
    const v12, 0x7f090d1a

    goto :goto_2

    .line 601
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_8

    .line 602
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_7

    const v12, 0x7f0901dc

    :goto_3
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_7
    const v12, 0x7f0901dd

    goto :goto_3

    .line 606
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_a

    .line 607
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_9

    const v12, 0x7f0901e0

    :goto_4
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_9
    const v12, 0x7f0901e1

    goto :goto_4

    .line 611
    :cond_a
    const/4 v6, 0x0

    .line 612
    .local v6, letters:I
    const/4 v9, 0x0

    .line 613
    .local v9, numbers:I
    const/4 v7, 0x0

    .line 614
    .local v7, lowercase:I
    const/4 v10, 0x0

    .line 615
    .local v10, symbols:I
    const/4 v11, 0x0

    .line 616
    .local v11, uppercase:I
    const/4 v8, 0x0

    .line 617
    .local v8, nonletter:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_10

    .line 618
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 620
    .local v3, c:C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_b

    const/16 v12, 0x7f

    if-le v3, v12, :cond_c

    .line 621
    :cond_b
    const v12, 0x7f0901e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 623
    :cond_c
    const/16 v12, 0x30

    if-lt v3, v12, :cond_d

    const/16 v12, 0x39

    if-gt v3, v12, :cond_d

    .line 624
    add-int/lit8 v9, v9, 0x1

    .line 625
    add-int/lit8 v8, v8, 0x1

    .line 617
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 626
    :cond_d
    const/16 v12, 0x41

    if-lt v3, v12, :cond_e

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_e

    .line 627
    add-int/lit8 v6, v6, 0x1

    .line 628
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 629
    :cond_e
    const/16 v12, 0x61

    if-lt v3, v12, :cond_f

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_f

    .line 630
    add-int/lit8 v6, v6, 0x1

    .line 631
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 633
    :cond_f
    add-int/lit8 v10, v10, 0x1

    .line 634
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 638
    .end local v3           #c:C
    :cond_10
    const/high16 v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_13

    if-gtz v6, :cond_11

    if-lez v10, :cond_13

    .line 640
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v12

    if-gtz v12, :cond_13

    .line 643
    :cond_12
    const v12, 0x7f0901e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 646
    :cond_13
    const/high16 v12, 0x6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_19

    .line 648
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v6, v12, :cond_14

    .line 649
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f110001

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 652
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v9, v12, :cond_15

    .line 653
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f110004

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 656
    :cond_15
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v7, v12, :cond_16

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f110002

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 660
    :cond_16
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_17

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f110003

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 664
    :cond_17
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_18

    .line 665
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f110005

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 668
    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v8, v12, :cond_21

    .line 669
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f110006

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 673
    :cond_19
    const/high16 v12, 0x7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_1c

    .line 678
    if-gtz v6, :cond_1a

    if-lez v10, :cond_1b

    .line 679
    :cond_1a
    const v12, 0x7f0901b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 681
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 684
    :cond_1c
    const/high16 v12, 0x4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_1e

    const/4 v1, 0x1

    .line 686
    .local v1, alphabetic:Z
    :goto_7
    const/high16 v12, 0x5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_1f

    const/4 v2, 0x1

    .line 688
    .local v2, alphanumeric:Z
    :goto_8
    if-nez v1, :cond_1d

    if-eqz v2, :cond_20

    :cond_1d
    if-nez v6, :cond_20

    .line 689
    const v12, 0x7f0901e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 684
    .end local v1           #alphabetic:Z
    .end local v2           #alphanumeric:Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_7

    .line 686
    .restart local v1       #alphabetic:Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_8

    .line 691
    .restart local v2       #alphanumeric:Z
    :cond_20
    if-eqz v2, :cond_21

    if-nez v9, :cond_21

    .line 692
    const v12, 0x7f0901e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 695
    .end local v1           #alphabetic:Z
    .end local v2           #alphanumeric:Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 696
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_22

    const v12, 0x7f0901e9

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_22
    const v12, 0x7f0901e3

    goto :goto_9

    .line 700
    :cond_23
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v12

    if-nez v12, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/enterprise/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v12

    if-nez v12, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v12

    if-nez v12, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v12

    if-eqz v12, :cond_25

    .line 705
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/app/enterprise/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_25

    .line 706
    const v12, 0x7f0901e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 710
    :cond_25
    const/4 v12, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1159
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-nez v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 1161
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1163
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 1165
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1169
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 543
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 544
    packed-switch p1, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 546
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 547
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 548
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    .line 1003
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1005
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 1010
    :pswitch_1
    sget-boolean v9, Lcom/android/settings_ex/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v9, :cond_3

    .line 1012
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v10, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v9}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v9

    if-ne v9, v11, :cond_1

    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v9}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v9

    if-lez v9, :cond_1

    .line 1014
    iput-boolean v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->userCancelledPwdChange:Z

    .line 1015
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const v11, 0xea60

    iget-object v12, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v12

    mul-int/2addr v11, v12

    int-to-long v11, v11

    add-long v7, v9, v11

    .line 1016
    .local v7, when:J
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x1000

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1019
    .local v6, sender:Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1020
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/app/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 1021
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1023
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v7           #when:J
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v10, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v10, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v9, v10, :cond_0

    .line 1024
    :cond_2
    sget-object v9, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1025
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1031
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1035
    :pswitch_2
    iput-boolean v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 1036
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1037
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1038
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_4

    .line 1039
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1040
    .local v1, i:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1041
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1042
    .local v5, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1043
    .local v4, pkgName:Ljava/lang/String;
    const-string v9, "com.android.phone"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1045
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1053
    .end local v1           #i:Ljava/util/Iterator;
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v5           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1080

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x7f0b0051
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 505
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 506
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, pin:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 508
    .local v0, cursorPos:I
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 509
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 518
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 523
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x4

    .line 269
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 271
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 273
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings_ex/ChooseLockPassword;->isChangePwdRequired:Z

    .line 276
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 277
    const-string v2, "ChooseLockPassword"

    const-string v5, "mCheckSimplePassword = false"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.email"

    const-string v7, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 282
    const-string v2, "ChooseLockPassword"

    const-string v5, "mCheckSimplePassword = true"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    const-string v2, "lockscreen.password_type"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 288
    const-string v2, "lockscreen.password_min"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 291
    const-string v2, "lockscreen.password_max"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 292
    const-string v2, "lockscreen.password_min_letters"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 294
    const-string v2, "lockscreen.password_min_uppercase"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 296
    const-string v2, "lockscreen.password_min_lowercase"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 298
    const-string v2, "lockscreen.password_min_numeric"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 300
    const-string v2, "lockscreen.password_min_symbols"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 302
    const-string v2, "lockscreen.password_min_nonletter"

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 306
    const-string v2, "lockscreen.password_old"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 307
    const/4 v0, 0x4

    .line 308
    .local v0, MIN_PWD_LENGTH:I
    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-lt v2, v8, :cond_9

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-ge v2, v5, :cond_9

    .line 316
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "alarm"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 317
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "power"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPowerManager:Landroid/os/PowerManager;

    .line 318
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "enterprise_policy"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_3

    .line 321
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 322
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v2, v4}, Landroid/app/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 323
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 325
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 326
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "statusbar"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 328
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-lez v2, :cond_5

    .line 329
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    const/high16 v5, 0x2

    if-lt v2, v5, :cond_5

    .line 330
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 333
    :cond_5
    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v8, :cond_6

    .line 334
    iput v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 336
    :cond_6
    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v9, :cond_7

    .line 337
    iput v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 341
    :cond_7
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 345
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    .line 347
    const-string v2, "choose_cac_pin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    const/high16 v5, 0x7

    if-ne v2, v5, :cond_b

    :cond_8
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    .line 352
    return-void

    .line 310
    :cond_9
    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v8, :cond_a

    .line 311
    iput v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 312
    :cond_a
    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v5, :cond_2

    .line 313
    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iput v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0

    :cond_b
    move v2, v3

    .line 347
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 359
    const/4 v9, 0x0

    .line 360
    .local v9, view:Landroid/view/View;
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_9

    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 364
    const v10, 0x7f04002b

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 365
    const v10, 0x7f0b0053

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 366
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v10, :cond_2

    .line 367
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 375
    :cond_2
    :goto_0
    const v10, 0x7f0b0051

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 376
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    sget-boolean v10, Lcom/android/settings_ex/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v10, :cond_3

    .line 379
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 380
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 384
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v10

    if-lez v10, :cond_4

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 386
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v10, :cond_4

    .line 387
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 388
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 392
    :cond_4
    const v10, 0x7f0b0052

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 393
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 396
    const/high16 v10, 0x4

    iget v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_6

    const/high16 v10, 0x5

    iget v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_6

    const/high16 v10, 0x6

    iget v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_6

    iget-boolean v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v10, :cond_5

    const/high16 v10, 0x7

    iget v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_6

    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    if-lez v10, :cond_a

    const/high16 v10, 0x7

    iget v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_a

    :cond_6
    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 403
    const v10, 0x7f0b0062

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 404
    const v10, 0x7f0b0060

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 405
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 406
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 407
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v11, 0x200

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 409
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 410
    .local v1, activity:Landroid/app/Activity;
    new-instance v10, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v10, v1, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 412
    iget-object v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 416
    const v10, 0x7f0b004f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 417
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 419
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 420
    .local v3, currentType:I
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_c

    .end local v3           #currentType:I
    :goto_3
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 423
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 424
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "confirm_credentials"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 425
    .local v2, confirmCredentials:Z
    if-nez p3, :cond_d

    .line 426
    sget-object v10, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 427
    if-eqz v2, :cond_7

    .line 428
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 440
    :cond_7
    :goto_4
    instance-of v10, v1, Landroid/preference/PreferenceActivity;

    if-eqz v10, :cond_8

    move-object v6, v1

    .line 441
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 444
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-boolean v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v10, :cond_e

    .line 445
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v11, 0x7f0901c2

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 446
    const v4, 0x7f0901c2

    .line 452
    .local v4, id:I
    :goto_5
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 453
    .local v8, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8, v8}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 456
    .end local v4           #id:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_8
    return-object v9

    .line 371
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #confirmCredentials:Z
    .end local v5           #intent:Landroid/content/Intent;
    :cond_9
    const v10, 0x7f04002a

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 396
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 412
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_b
    const/4 v10, 0x1

    goto :goto_2

    .line 420
    .restart local v3       #currentType:I
    :cond_c
    const/16 v3, 0x12

    goto :goto_3

    .line 432
    .end local v3           #currentType:I
    .restart local v2       #confirmCredentials:Z
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_d
    const-string v10, "first_pin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 433
    const-string v10, "ui_stage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, state:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 435
    invoke-static {v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 436
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_4

    .line 448
    .end local v7           #state:Ljava/lang/String;
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_e
    iget-boolean v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_f

    const v4, 0x7f090627

    .restart local v4       #id:I
    :goto_6
    goto :goto_5

    .end local v4           #id:I
    :cond_f
    const v4, 0x7f090629

    goto :goto_6
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 1072
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 1075
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 1076
    const/4 v0, 0x1

    .line 1078
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 526
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 527
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->reenableStatusBar()V

    .line 529
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v0

    if-lez v0, :cond_0

    .line 531
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 466
    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceConnectedWithCACCard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 470
    const-string v1, "ChooseLockPassword"

    const-string v2, "user postponed password setting. Will return after password time expired"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 474
    :cond_0
    const-string v1, "ChooseLockPassword"

    const-string v2, "device is not paired with CAC card. Starting pairing activity"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/BluetoothPairingWithCac;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 476
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CAC_PAIRING"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    const-string v1, "PasswordChangeEnforced"

    sget-boolean v2, Lcom/android/settings_ex/ChooseLockPassword;->isChangePwdRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 501
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 485
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v1

    if-lez v1, :cond_3

    .line 487
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->disableStatusBar()V

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 491
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 493
    sget-boolean v1, Lcom/android/settings_ex/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v1, :cond_1

    .line 494
    iget v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 495
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f0901b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 497
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f090d15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 536
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1173
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 556
    .local v0, previousStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 557
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 561
    if-eq v0, p1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 564
    :cond_0
    return-void
.end method
