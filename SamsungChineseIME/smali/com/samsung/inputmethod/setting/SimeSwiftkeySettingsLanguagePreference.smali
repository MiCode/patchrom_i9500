.class public Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;
.super Landroid/preference/Preference;
.source "SimeSwiftkeySettingsLanguagePreference.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SwiftkeyLanguagePreference"


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private final downloadNotificationBuilder:Landroid/app/Notification$Builder;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private enableCheckBox:Landroid/widget/CheckBox;

.field private languageNameTitle:Ljava/lang/String;

.field listener:Lcom/touchtype_fluency/util/ProgressListener;

.field private final lp:Lcom/touchtype_fluency/util/LanguagePack;

.field private final lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private mIsCheckboxDontShowDownload:Z

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

.field private statusTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private updateButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 2
    .parameter "SwiftkeyLanguagesSettings"
    .parameter "language"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 67
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getLanguagePackManager(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 70
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    .line 72
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    .line 73
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    .line 75
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->setWidgetLayoutResource(I)V

    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    .line 112
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ko_KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en_US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;IIZZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->createNotification(IIZZII)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadlanguagepack()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->mIsCheckboxDontShowDownload:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->mIsCheckboxDontShowDownload:Z

    return p1
.end method

.method private checkedLanguage(Ljava/lang/String;)V
    .locals 2
    .parameter "ID"

    .prologue
    const/4 v1, 0x1

    .line 510
    const-string v0, "zh_CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChinese(Z)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    const-string v0, "zh_HK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseHk(Z)V

    goto :goto_0

    .line 514
    :cond_2
    const-string v0, "zh_TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseTw(Z)V

    goto :goto_0

    .line 516
    :cond_3
    const-string v0, "ko_KR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageKorean(Z)V

    goto :goto_0

    .line 518
    :cond_4
    const-string v0, "en_US"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageEnglish(Z)V

    goto :goto_0
.end method

.method private createNotification(IIZZII)V
    .locals 8
    .parameter "resId"
    .parameter "serviceId"
    .parameter "update"
    .parameter "onGoing"
    .parameter "maximum"
    .parameter "current"

    .prologue
    const/4 v7, 0x0

    .line 422
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 425
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 429
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.touchtype.personalizer.PERSONALIZER_SETTINGS_ACTIVITY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.inputmethod.setting.SimeSwiftkeySettingsLanguage"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 435
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const/high16 v4, 0x800

    invoke-static {v3, v7, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 438
    .local v0, downloadIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const v6, 0x7f0b0262

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 441
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 442
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 444
    if-eqz p4, :cond_1

    .line 445
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v4, 0x1080081

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 446
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 447
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, p5, p6, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 448
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 455
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 456
    return-void

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v4, 0x1080082

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 451
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 452
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v7, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 453
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private downloadlanguagepack()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 286
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    .line 288
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->rebuildLanguageList()V

    .line 289
    const v1, 0x7f0b0267

    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v5, 0x64

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->createNotification(IIZZII)V

    .line 293
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 294
    .local v8, json:Lorg/json/JSONObject;
    const-string v0, "download-progress"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    const-string v0, "download-max"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0, v8}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v8           #json:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v7

    .line 298
    .local v7, e:Lorg/json/JSONException;
    const-string v0, "SwiftkeyLanguagePreference"

    const-string v1, "downloadlanguagepack exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDownloadGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 412
    const v0, 0x7f0c004b

    return v0
.end method

.method private getDownloadGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 416
    const v0, 0x7f030014

    return v0
.end method

.method private getLanguageID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ID"

    .prologue
    .line 490
    const-string v1, "zh_CN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const-string v0, "Language1"

    .line 503
    .local v0, langID:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 492
    .end local v0           #langID:Ljava/lang/String;
    :cond_0
    const-string v1, "zh_HK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    const-string v0, "Language5"

    .restart local v0       #langID:Ljava/lang/String;
    goto :goto_0

    .line 494
    .end local v0           #langID:Ljava/lang/String;
    :cond_1
    const-string v1, "zh_TW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    const-string v0, "Language4"

    .restart local v0       #langID:Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v0           #langID:Ljava/lang/String;
    :cond_2
    const-string v1, "ko_KR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    const-string v0, "Language2"

    .restart local v0       #langID:Ljava/lang/String;
    goto :goto_0

    .line 498
    .end local v0           #langID:Ljava/lang/String;
    :cond_3
    const-string v1, "en_US"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 499
    const-string v0, "Language3"

    .restart local v0       #langID:Ljava/lang/String;
    goto :goto_0

    .line 501
    .end local v0           #langID:Ljava/lang/String;
    :cond_4
    const-string v0, "Language3"

    .restart local v0       #langID:Ljava/lang/String;
    goto :goto_0
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 460
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 462
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 463
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 464
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 467
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private unCheckedLanguage(Ljava/lang/String;)V
    .locals 2
    .parameter "ID"

    .prologue
    const/4 v1, 0x0

    .line 526
    const-string v0, "zh_CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChinese(Z)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const-string v0, "zh_HK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseHk(Z)V

    goto :goto_0

    .line 530
    :cond_2
    const-string v0, "zh_TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseTw(Z)V

    goto :goto_0

    .line 532
    :cond_3
    const-string v0, "ko_KR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageKorean(Z)V

    goto :goto_0

    .line 534
    :cond_4
    const-string v0, "en_US"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageEnglish(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected CheckandSettheViewState(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 153
    const v3, 0x7f0c0062

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->titleTextView:Landroid/widget/TextView;

    .line 154
    const v3, 0x7f0c0063

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->statusTextView:Landroid/widget/TextView;

    .line 155
    const v3, 0x7f0c0016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->cancelButton:Landroid/widget/Button;

    .line 156
    const v3, 0x7f0c0064

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    .line 157
    const v3, 0x7f0c0015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->updateButton:Landroid/widget/Button;

    .line 158
    const v3, 0x7f0c0052

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 160
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 167
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-interface {v3, v4}, Lcom/touchtype_fluency/util/LanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, current:I
    const/4 v1, 0x0

    .line 174
    .local v1, maximum:I
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v2

    .line 175
    .local v2, metadata:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 176
    const-string v3, "download-progress"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    const-string v3, "download-max"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 181
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 215
    .end local v0           #current:I
    .end local v1           #maximum:I
    .end local v2           #metadata:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 193
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v4, 0x7f0b00b6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 203
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 199
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v4, 0x7f0b00b5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 207
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public getEnableTouchScreenEnd()D
    .locals 6

    .prologue
    .line 481
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 482
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 483
    .local v0, dsp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getEnableTouchScreenHeight()D
    .locals 6

    .prologue
    .line 470
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 471
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 472
    .local v0, dsp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fef5c28f5c28f5cL

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getEnableTouchScreenStart()D
    .locals 6

    .prologue
    .line 476
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 477
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 478
    .local v0, dsp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->CheckandSettheViewState(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->updateButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method protected onClick()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 220
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    iget v6, v6, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mPointerY:I

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->getEnableTouchScreenHeight()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    iget v6, v6, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mPointerX:I

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->getEnableTouchScreenStart()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    iget v6, v6, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mPointerX:I

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->getEnableTouchScreenEnd()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->getLanguageID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, mlanguageID:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 227
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "first_swiftkey_download_execution"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 229
    .local v1, mIsCheckDontShowDownloadGuide:Z
    const-string v6, "swiftkey_download_execution"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 232
    .local v2, mIsUpdateDownloadGuide:Z
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 233
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getLanguageSettingharedPreferencesEdit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 236
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v7, 0x7f0b00b5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v6, v7, v11}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 239
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->unCheckedLanguage(Ljava/lang/String;)V

    .line 240
    if-eqz v3, :cond_2

    .line 241
    invoke-interface {v0, v3, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 261
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 245
    :cond_3
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v6, v7, v10}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 246
    if-eqz v3, :cond_4

    .line 247
    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    :cond_4
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v7, 0x7f0b00b6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 251
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->checkedLanguage(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_5
    const v4, 0x7f0b0269

    .line 254
    .local v4, resId:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-virtual {v7, v4}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 264
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v4           #resId:I
    :cond_6
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v6

    if-nez v6, :cond_0

    .line 265
    if-eqz v1, :cond_7

    .line 266
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->showDownloadGuideDialog()V

    goto/16 :goto_0

    .line 269
    :cond_7
    if-eqz v2, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadlanguagepack()V

    goto/16 :goto_0
.end method

.method public showDownloadGuideDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    .line 357
    .local v3, DownloadGuideLayoutRscId:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    .line 361
    .local v2, DownloadGuideCheckBoxRscId:I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 362
    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 364
    .local v6, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v6, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 365
    .local v5, guideLayout:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 369
    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const v8, 0x7f0b026b

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 370
    const v7, 0x1010355

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 372
    const v7, 0x7f0c004a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->titleTextView:Landroid/widget/TextView;

    .line 373
    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    const v9, 0x7f0b0265

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    const v7, 0x7f0b0045

    invoke-virtual {v0, v7, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    const v7, 0x7f0b005d

    new-instance v8, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$4;

    invoke-direct {v8, p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$4;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 396
    .local v4, chkbox:Landroid/widget/CheckBox;
    if-eqz v4, :cond_0

    .line 397
    new-instance v7, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$5;

    invoke-direct {v7, p0, v4}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$5;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 407
    .local v1, DownloadDlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 409
    return-void
.end method
