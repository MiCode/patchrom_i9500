.class public Lcom/touchtype/personalizer/PersonalizerSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "PersonalizerSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;,
        Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;,
        Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;,
        Lcom/touchtype/personalizer/PersonalizerSettingsActivity$Settings;
    }
.end annotation


# static fields
.field public static PERSONALIZE_FOLDER:Ljava/lang/String; = null

.field public static final PERSONALIZE_RESULT_PERSONALIZED:I = 0x1

.field public static final TAG:Ljava/lang/String; = null

.field private static final WATCHER_WAIT:J = 0x1f4L


# instance fields
.field private mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

.field private mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

.field public mFromInstaller:Z

.field public mPersonalizedResult:I

.field private mPreferenceActivity:Landroid/preference/PreferenceActivity;

.field private mPreferences:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/touchtype/personalizer/PersonalizerService;

.field private mTimedTask:Ljava/lang/Runnable;

.field private mWatcherHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "personalize"

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->PERSONALIZE_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mFromInstaller:Z

    .line 38
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    .line 112
    return-void
.end method

.method static synthetic access$102(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->setPreferenceState()V

    return-void
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mWatcherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindToService()V
    .locals 4

    .prologue
    .line 225
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Bind to personalizer service"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/preference/PreferenceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 230
    return-void
.end method

.method private checkWeibo(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "screen"
    .parameter "pref"

    .prologue
    .line 421
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_personalize_weibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 423
    .local v0, showWeibo:Z
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 424
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Removed Weibo due to configuration setting"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 426
    const/4 v1, 0x0

    .line 429
    .end local v0           #showWeibo:Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPreferences()Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 385
    .local v5, prefs:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/touchtype/personalizer/PersonalizerPreference;>;"
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 386
    .local v6, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 388
    .local v4, preferenceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 390
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 392
    .local v8, tpref:Landroid/preference/Preference;
    instance-of v10, v8, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_1

    .line 394
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 396
    .local v7, subcat:Landroid/preference/PreferenceCategory;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 398
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 399
    .local v9, tsubpref:Landroid/preference/Preference;
    instance-of v10, v9, Lcom/touchtype/personalizer/PersonalizerPreference;

    if-eqz v10, :cond_0

    .line 401
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 403
    .local v3, pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    invoke-direct {p0, v7, v3}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->checkWeibo(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result v0

    .line 404
    .local v0, addPref:Z
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v0           #addPref:Z
    .end local v3           #pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 409
    .end local v2           #j:I
    .end local v7           #subcat:Landroid/preference/PreferenceCategory;
    .end local v9           #tsubpref:Landroid/preference/Preference;
    :cond_1
    instance-of v10, v8, Lcom/touchtype/personalizer/PersonalizerPreference;

    if-eqz v10, :cond_2

    move-object v3, v8

    .line 411
    check-cast v3, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 412
    .restart local v3       #pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v3           #pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v8           #tpref:Landroid/preference/Preference;
    :cond_3
    return-object v5
.end method

.method private setPreferenceState()V
    .locals 13

    .prologue
    const v12, 0x7f0b0254

    .line 281
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferences:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 283
    .local v5, pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    const/4 v9, 0x0

    .line 284
    .local v9, summary:Ljava/lang/String;
    const/4 v0, 0x1

    .line 285
    .local v0, enabled:Z
    const/4 v7, 0x0

    .line 287
    .local v7, serviceId:I
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    invoke-virtual {v10}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 289
    const/4 v8, 0x0

    .line 290
    .local v8, state:I
    const-wide/16 v3, 0x0

    .line 292
    .local v3, lastRun:J
    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 296
    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v6

    .line 297
    .local v6, pz:Lcom/touchtype/personalizer/Personalizer;
    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v7

    .line 298
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v8

    .line 299
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v3

    .line 313
    .end local v6           #pz:Lcom/touchtype/personalizer/Personalizer;
    :cond_0
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 356
    :goto_2
    :pswitch_0
    invoke-virtual {v5, v9}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v5, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->setEnabled(Z)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 307
    sget-object v10, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 308
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v10, v7}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v8

    .line 309
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v10, v7}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v3

    goto :goto_1

    .line 321
    .end local v2           #key:Ljava/lang/String;
    :pswitch_1
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v10}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0253

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 323
    goto :goto_2

    .line 327
    :pswitch_2
    const/4 v10, 0x7

    if-ne v7, v10, :cond_2

    const v10, 0x7f0b0256

    :goto_3
    invoke-direct {p0, v3, v4, v10, v12}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    .line 332
    goto :goto_2

    .line 327
    :cond_2
    const v10, 0x7f0b0255

    goto :goto_3

    .line 336
    :pswitch_3
    const v10, 0x7f0b0261

    invoke-direct {p0, v3, v4, v10, v12}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    .line 339
    goto :goto_2

    .line 343
    :pswitch_4
    const v10, 0x7f0b0257

    const v11, 0x7f0b0258

    invoke-direct {p0, v3, v4, v10, v11}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    .line 346
    goto :goto_2

    .line 349
    :pswitch_5
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v10}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0259

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 351
    const/4 v0, 0x0

    goto :goto_2

    .line 362
    .end local v3           #lastRun:J
    .end local v8           #state:I
    :cond_3
    const-string v10, ""

    invoke-virtual {v5, v10}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    .end local v0           #enabled:Z
    .end local v5           #pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    .end local v7           #serviceId:I
    .end local v9           #summary:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    if-eqz v10, :cond_5

    .line 367
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->setEnabled(Z)V

    .line 373
    :cond_5
    return-void

    .line 313
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSummary(JII)Ljava/lang/String;
    .locals 11
    .parameter "lastRun"
    .parameter "withRelativeDateId"
    .parameter "withoutRelativeDateId"

    .prologue
    const/4 v10, 0x0

    .line 444
    const/4 v8, 0x0

    .line 445
    .local v8, relative:Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 446
    .local v9, summary:Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 448
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/4 v6, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 462
    :cond_0
    :goto_0
    if-eqz v8, :cond_2

    .line 464
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p3}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, fmt:Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v0, "%1$s"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v10

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 475
    .end local v7           #fmt:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 469
    .restart local v7       #fmt:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "does not contain %1$s"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 472
    .end local v7           #fmt:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setup()V
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 126
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->showUseWifiToast(Landroid/os/Bundle;)V

    .line 128
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getPreferences()Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferences:Ljava/util/Vector;

    .line 129
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0228

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iput-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    .line 131
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    invoke-virtual {v2, p0}, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->setConfiguration(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    .line 144
    return-void
.end method

.method private showUseWifiToast(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    .line 261
    if-eqz p1, :cond_0

    const-string v0, "com.touchtype.personalizer.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.touchtype.personalizer.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    const v2, 0x7f0b0252

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    :cond_0
    return-void
.end method

.method private unbindFromService()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unbind from personalizer service"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public clearUserModel()V
    .locals 4

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, res:Z
    const/4 v1, 0x0

    .line 244
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerService;->clearLanguageData()Z

    move-result v0

    .line 247
    :cond_0
    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 258
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, serviceName:Ljava/lang/String;
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferences:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 158
    .local v2, pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 161
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {v2, v8}, Lcom/touchtype/personalizer/PersonalizerPreference;->setActive(Z)V

    .line 163
    sget-object v5, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivityResult() resultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    packed-switch p2, :pswitch_data_0

    .line 200
    .end local v2           #pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 169
    .restart local v2       #pref:Lcom/touchtype/personalizer/PersonalizerPreference;
    :pswitch_1
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    .line 172
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0251

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    :cond_2
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    const-string v6, "params"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/touchtype/personalizer/Personalizer;->startPersonalization(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b024a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, format:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 190
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/touchtype/personalizer/PersonalizerService;->setFailed(I)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f040008

    invoke-virtual {p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    :cond_0
    iput-object p0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    .line 66
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->showUseWifiToast(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->finish()V

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 204
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->bindToService()V

    .line 205
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->setup()V

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mWatcherHandler:Landroid/os/Handler;

    .line 208
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mTimedTask:Ljava/lang/Runnable;

    .line 209
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 215
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->unbindFromService()V

    .line 217
    return-void
.end method
