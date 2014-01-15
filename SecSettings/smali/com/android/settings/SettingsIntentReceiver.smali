.class public Lcom/android/settings_ex/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# static fields
.field public static final ACTION_REQUEST_ATT:Ljava/lang/String; = "android.intent.action.BCS_REQUEST"

.field public static final ACTION_RESPONSE_ATT:Ljava/lang/String; = "android.intent.action.BCS_RESPONSE"

.field private static final COMMAND_REQ_PREFIX_ATT:Ljava/lang/String; = "AT+AIRPLANEVALUE"

.field private static final DEFAULT_SCREENREADER_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final ENABLED_SERVICES_SEPARATOR:C = ':'

.field public static final PREF_APN_SETTING:Ljava/lang/String; = "apn_setting"

.field public static final PROPERTY_BROWSER_APN:Ljava/lang/String; = "com.android.settings_ex.browserapn"

.field private static final TAG:Ljava/lang/String; = "SettingsIntentReceiver"

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mContext:Landroid/content/Context;

.field mSalesCode:Ljava/lang/String;

.field private final warningNotificationID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings_ex/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 94
    const v0, 0x7f0203df

    iput v0, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->warningNotificationID:I

    return-void
.end method

.method private GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 801
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 803
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 804
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 805
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 817
    :cond_1
    :goto_1
    return v3

    .line 813
    :cond_2
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 814
    goto :goto_1
.end method

.method private GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 780
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 782
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 783
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 784
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 797
    :cond_1
    :goto_1
    return-object v3

    .line 792
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 797
    aget-object v3, v2, v5

    goto :goto_1
.end method

.method private SetMyProfileTextSize(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 856
    const-string v10, "layout_inflater"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 857
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f0400c0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 858
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0b01da

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/myprofile/EllipsisEditText;

    .line 860
    .local v6, mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_information"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 861
    .local v7, mypofile_string:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 894
    :goto_0
    return-void

    .line 865
    :cond_0
    const/4 v8, 0x0

    .line 866
    .local v8, otherContext:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_font_package"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 867
    .local v5, mFontStylePackageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_font_filename"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 869
    .local v4, mFontFileNames:Ljava/lang/String;
    const/4 v10, 0x2

    :try_start_1
    invoke-virtual {p1, v5, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 873
    :goto_1
    :try_start_2
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 874
    .local v1, am:Landroid/content/res/AssetManager;
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 875
    .local v2, fontTypeface:Landroid/graphics/Typeface;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 881
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v2           #fontTypeface:Landroid/graphics/Typeface;
    .end local v4           #mFontFileNames:Ljava/lang/String;
    .end local v5           #mFontStylePackageName:Ljava/lang/String;
    :goto_2
    const-string v10, "Life companion"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 882
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090d10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 885
    :cond_1
    const/4 v10, 0x1

    new-array v0, v10, [Landroid/text/InputFilter;

    .line 886
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/16 v12, 0x17

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v0, v10

    .line 887
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 888
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6, v10}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 890
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00bf

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 891
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    invoke-virtual {v6}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->fontChange()V

    .line 893
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_text_size"

    invoke-virtual {v6}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->getTextSize()F

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 870
    .end local v0           #FilterArray:[Landroid/text/InputFilter;
    .restart local v4       #mFontFileNames:Ljava/lang/String;
    .restart local v5       #mFontStylePackageName:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 876
    .end local v4           #mFontFileNames:Ljava/lang/String;
    .end local v5           #mFontStylePackageName:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 675
    const-string v0, "sys/class/sec/switch/adc"

    .line 676
    .local v0, SmartDockName:Ljava/lang/String;
    new-array v1, v8, [C

    .line 677
    .local v1, buffer:[C
    const/4 v3, 0x0

    .line 678
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 680
    .local v5, fileString:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 681
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    .line 682
    .local v6, len:I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 683
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 691
    .end local v4           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :goto_0
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 693
    const/4 v7, 0x1

    .line 695
    :cond_0
    return v7

    .line 685
    :catch_0
    move-exception v2

    .line 686
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 688
    .local v2, e:Ljava/io/IOException;
    :goto_2
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 687
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_2

    .line 685
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private isAutoActivateFMM(Z)Z
    .locals 4
    .parameter "onoff"

    .prologue
    const/4 v1, 0x1

    .line 712
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    if-eqz p1, :cond_1

    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CMCC"

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CU"

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    :cond_0
    const/4 v1, 0x0

    .line 726
    :cond_1
    return v1
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 653
    iget-object v4, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 657
    const-string v3, ""

    .line 660
    :cond_0
    sget-object v0, Lcom/android/settings_ex/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 661
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 663
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 664
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 666
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 667
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    const/4 v4, 0x1

    .line 671
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeDMfile()V
    .locals 8

    .prologue
    .line 731
    const/4 v3, 0x0

    .line 733
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/samsungaccount.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, dmFileName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DM file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 741
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_1
    if-eqz v4, :cond_d

    .line 744
    :try_start_1
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 751
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_0
    return-void

    .line 746
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 747
    .local v2, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 748
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 736
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 737
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    :cond_4
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_5
    if-eqz v3, :cond_3

    .line 744
    :try_start_3
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_6
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 746
    :catch_2
    move-exception v2

    .line 747
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 738
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 739
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 741
    :cond_7
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_8
    if-eqz v3, :cond_3

    .line 744
    :try_start_5
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_9
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 746
    :catch_4
    move-exception v2

    .line 747
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 741
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_a
    if-eqz v3, :cond_c

    .line 744
    :try_start_6
    sget-boolean v6, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_b
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 748
    :cond_c
    :goto_1
    throw v5

    .line 746
    :catch_5
    move-exception v2

    .line 747
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_d
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method private makeSecurityWarningNotificaiton()V
    .locals 12

    .prologue
    const v11, 0x7f091247

    const v10, 0x7f0203df

    const/4 v9, 0x0

    .line 822
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_UseChameleon"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ATT"

    iget-object v8, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    iget-object v8, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    iget-object v8, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    iget-object v8, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    iget-object v8, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 825
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 826
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v7, "pref_security_warning"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 828
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 829
    .local v6, warningIntent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 830
    const-string v7, "com.android.settings_ex"

    const-string v8, "com.android.settings_ex.SecurityWarningDialog"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    iget-object v7, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 834
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 835
    .local v5, warningClearIntent:Landroid/content/Intent;
    const-string v7, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    iget-object v7, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 838
    .local v1, deleteIntent:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 839
    .local v2, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 840
    .local v3, noti:Landroid/app/Notification$Builder;
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f091246

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 849
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 852
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #deleteIntent:Landroid/app/PendingIntent;
    .end local v2           #nm:Landroid/app/NotificationManager;
    .end local v3           #noti:Landroid/app/Notification$Builder;
    .end local v4           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v5           #warningClearIntent:Landroid/content/Intent;
    .end local v6           #warningIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private sendTalkbackNotification(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x0

    .line 632
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 633
    .local v1, nManager:Landroid/app/NotificationManager;
    const v3, 0xd20fe

    .line 635
    .local v3, notificationID:I
    if-eqz p2, :cond_0

    .line 636
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 637
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x7f0203e0

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 638
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 639
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 641
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 642
    .local v0, mIntent:Landroid/content/Intent;
    const-string v5, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 644
    .local v4, pi:Landroid/app/PendingIntent;
    const v5, 0x7f090770

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090771

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 646
    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 650
    .end local v0           #mIntent:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v4           #pi:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private toggleFmm(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "onoff"

    .prologue
    const/4 v3, 0x0

    .line 699
    const-string v2, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMM enabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-direct {p0, p2}, Lcom/android/settings_ex/SettingsIntentReceiver;->isAutoActivateFMM(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 704
    :cond_0
    const-string v2, "FMMPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 705
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 706
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 707
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    return-void

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1
    move v2, v3

    .line 701
    goto :goto_0
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 8
    .parameter "mtData"

    .prologue
    .line 754
    const/4 v3, 0x0

    .line 756
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, mtFileName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MT file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 759
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 767
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_1
    if-eqz v4, :cond_10

    .line 770
    :try_start_2
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 777
    .end local v2           #mtFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_0
    return-void

    .line 772
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 773
    .local v1, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 774
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 760
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v2           #mtFileName:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 761
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 767
    :cond_4
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_5
    if-eqz v3, :cond_3

    .line 770
    :try_start_4
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 772
    :catch_2
    move-exception v1

    .line 773
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 762
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 763
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 767
    :cond_7
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_8
    if-eqz v3, :cond_3

    .line 770
    :try_start_6
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 772
    :catch_4
    move-exception v1

    .line 773
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 764
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 765
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_7
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 767
    :cond_a
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_b

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_b
    if-eqz v3, :cond_3

    .line 770
    :try_start_8
    sget-boolean v5, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 772
    :catch_6
    move-exception v1

    .line 773
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 767
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    sget-boolean v6, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_d
    if-eqz v3, :cond_f

    .line 770
    :try_start_9
    sget-boolean v6, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_e
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 774
    :cond_f
    :goto_5
    throw v5

    .line 772
    :catch_7
    move-exception v1

    .line 773
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 767
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 764
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 762
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 760
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_10
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 62
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    .line 102
    .local v53, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    .line 103
    .local v36, mPm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 106
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    const-string v3, "com.samsung.wipe.MTDATA"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    .line 109
    .local v26, extras:Landroid/os/Bundle;
    const-string v3, "MTDATA"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 110
    .local v58, temp:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MT data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsIntentReceiver;->makeDMfile()V

    .line 115
    const-string v3, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    const-string v4, "mt_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, v53

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    .end local v26           #extras:Landroid/os/Bundle;
    .end local v58           #temp:Ljava/lang/String;
    :cond_2
    const-string v3, "com.android.settings_ex.action.talkback_off"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/settings_ex/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v15

    .line 123
    .local v15, bundle_data:Landroid/os/Bundle;
    const-string v3, "is_enabled"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 124
    .local v31, is_enabled:Z
    if-eqz v31, :cond_3

    .line 125
    const-string v3, "option_flag"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v33

    .line 126
    .local v33, mDisableExclusiveOptionsFlag:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move/from16 v0, v33

    invoke-static {v3, v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 582
    .end local v15           #bundle_data:Landroid/os/Bundle;
    .end local v31           #is_enabled:Z
    .end local v33           #mDisableExclusiveOptionsFlag:I
    :cond_3
    :goto_1
    const-string v3, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 583
    const-string v3, "samsung_signin"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    .line 620
    :cond_4
    :goto_2
    const-string v3, "android.intent.action.BROWSER_APN_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 621
    const-string v3, "CMCC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Web_EnableMultipleApn4"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 622
    const-string v3, "apn_setting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 623
    .local v14, browserApn:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 624
    const-string v3, "com.android.settings_ex.browserapn"

    invoke-static {v3, v14}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .end local v14           #browserApn:Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 116
    .restart local v26       #extras:Landroid/os/Bundle;
    .restart local v58       #temp:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 132
    .end local v26           #extras:Landroid/os/Bundle;
    .end local v58           #temp:Ljava/lang/String;
    :cond_7
    const-string v3, "android.intent.action.ASSISTIVELIGHT_ON"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 133
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_1

    .line 134
    :cond_8
    const-string v3, "android.intent.action.ASSISTIVELIGHT_OFF"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 135
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 136
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/NotificationManager;

    .line 137
    .local v48, notificationManager:Landroid/app/NotificationManager;
    const v3, 0x7f0203dd

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 138
    .end local v48           #notificationManager:Landroid/app/NotificationManager;
    :cond_9
    const-string v3, "android.intent.action.NEGATIVECOLOR_ON"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 139
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_1

    .line 140
    :cond_a
    const-string v3, "android.intent.action.NEGATIVECOLOR_OFF"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 141
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto/16 :goto_1

    .line 144
    :cond_b
    const-string v3, "android.intent.action.BCS_REQUEST"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 145
    const-string v3, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 146
    .local v17, command:Ljava/lang/String;
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive(), action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    .line 149
    :goto_4
    const-string v3, "AT+AIRPLANEVALUE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 150
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "ATT CMD is not AT+AIRPLANEVALUE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 148
    :cond_c
    const-string v17, ""

    goto :goto_4

    .line 153
    :cond_d
    new-instance v54, Landroid/content/Intent;

    const-string v3, "android.intent.action.BCS_RESPONSE"

    move-object/from16 v0, v54

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v54, responseIntent:Landroid/content/Intent;
    const-string v28, ""

    .line 155
    .local v28, isAirplane:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 156
    const-string v28, "ON"

    .line 160
    :goto_5
    const-string v3, "response"

    move-object/from16 v0, v54

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 158
    :cond_e
    const-string v28, "OFF"

    goto :goto_5

    .line 164
    .end local v17           #command:Ljava/lang/String;
    .end local v28           #isAirplane:Ljava/lang/String;
    .end local v54           #responseIntent:Landroid/content/Intent;
    :cond_f
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    .line 166
    .restart local v26       #extras:Landroid/os/Bundle;
    const/16 v55, 0x2

    .line 167
    .local v55, ringerMode:I
    if-eqz v26, :cond_11

    .line 168
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v55

    .line 169
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_10

    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras, ringer mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_10
    :goto_6
    packed-switch v55, :pswitch_data_0

    .line 192
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Not supported ringer mode"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 171
    :cond_11
    const-string v3, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    .line 172
    .local v13, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v55

    .line 173
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_10

    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No extras, ringer mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 178
    .end local v13           #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_12

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Ringer mode: silent"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_12
    const-string v3, "vibrate_in_silent"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 183
    :pswitch_1
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Ringer mode: vibrate"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_13
    const-string v3, "vibrate_in_silent"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 188
    :pswitch_2
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_14

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Ringer mode: normal"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_14
    const-string v3, "vibrate_in_silent"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 194
    .end local v26           #extras:Landroid/os/Bundle;
    .end local v55           #ringerMode:I
    :cond_15
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 197
    const-string v3, "first_sim_brightness_flag"

    const/4 v4, -0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 198
    .local v27, first_sim_brightness_flag:I
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first_sim_brightness_flag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v3, 0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_17

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 201
    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_17

    .line 202
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v56

    .line 203
    .local v56, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "pref_siop_brightness"

    const/4 v4, -0x1

    move-object/from16 v0, v56

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v42

    .line 204
    .local v42, max_brightness:I
    if-gez v42, :cond_16

    .line 205
    const/16 v42, 0xff

    .line 207
    :cond_16
    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    const-string v3, "screen_brightness"

    move-object/from16 v0, v53

    move/from16 v1, v42

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    const-string v3, "first_sim_brightness_flag"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    .end local v42           #max_brightness:I
    .end local v56           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_17
    :goto_7
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_8
    const-string v3, "auto_adjust_touch"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    :goto_9
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    .line 241
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 243
    const-string v3, "power_saving_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    :goto_a
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 248
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_network"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2c

    const/16 v30, 0x1

    .line 250
    .local v30, isOn:Z
    :goto_b
    const-string v3, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/StatusBarManager;

    .line 260
    .local v39, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_19

    .line 261
    const-string v3, "high_contrast"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    :goto_c
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    .line 264
    :cond_19
    const-string v3, "torch_light"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 266
    const-string v3, "torch_light"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    :cond_1a
    const-string v3, "screen_mode_automatic_setting"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    .line 271
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 295
    :goto_d
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v56

    .line 296
    .restart local v56       #sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "pref_device_provision"

    const/4 v4, 0x0

    move-object/from16 v0, v56

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 297
    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const v4, 0x1d8a8

    if-ne v3, v4, :cond_1b

    .line 298
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Overriding setup wizard set screen timeout"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v4, "screen_off_timeout"

    const-string v3, "USC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const v3, 0xea60

    :goto_e
    move-object/from16 v0, v53

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    :cond_1b
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 303
    invoke-interface/range {v56 .. v56}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 304
    .local v24, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_device_provision"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    .end local v24           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1c
    const-string v3, "notification_panel_active_app_list"

    move-object/from16 v0, v53

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, active_app_list:Ljava/lang/String;
    if-eqz v12, :cond_1d

    const-string v3, "SmartPause"

    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SmartPause;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 316
    const-string v3, "notification_panel_active_app_list"

    move-object/from16 v0, v53

    invoke-static {v0, v3, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    :cond_1d
    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    .line 325
    .local v49, oldScreenTimOut:I
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_1e

    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current screen timeout value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1e
    const v3, 0x927c0

    move/from16 v0, v49

    if-gt v0, v3, :cond_1f

    if-gez v49, :cond_20

    .line 328
    :cond_1f
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Reset screen timeout to 10mins"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v3, "screen_off_timeout"

    const v4, 0x927c0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    :cond_20
    const-string v3, "stay_on_while_plugged_in"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v50

    .line 333
    .local v50, oldStayAwake:I
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_21

    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current stay awake value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_21
    if-eqz v50, :cond_22

    .line 335
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Set stay awake off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v3, "stay_on_while_plugged_in"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    :cond_22
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 343
    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_23

    .line 344
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Reset screen timeout to 30 seconds"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    :cond_23
    const-string v3, "usb_setting_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    .line 351
    const-string v3, "usb_setting_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    :cond_24
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_25

    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "salesCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_25
    const-string v3, "TMB"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 358
    const-string v3, "auto_time"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    const-string v3, "auto_time_zone"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    :cond_26
    const-string v3, "storage.mmc.size"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 364
    .local v32, mDefaultMemory:Ljava/lang/String;
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-wide/16 v19, 0x0

    .line 366
    .local v19, defaultMem:J
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "storage_mmc_size"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v3, "storage_mmc_size"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 368
    const-string v3, "none"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 369
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 370
    const-string v3, "storage_mmc_size"

    move-object/from16 v0, v53

    move-wide/from16 v1, v19

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 374
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 375
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/app/NotificationManager;

    .line 376
    .local v44, nManager:Landroid/app/NotificationManager;
    const v47, 0xd20fe

    .line 378
    .local v47, notificationID:I
    new-instance v46, Landroid/app/Notification;

    invoke-direct/range {v46 .. v46}, Landroid/app/Notification;-><init>()V

    .line 379
    .local v46, notification:Landroid/app/Notification;
    const v3, 0x7f0203e0

    move-object/from16 v0, v46

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 380
    const-wide/16 v3, 0x0

    move-object/from16 v0, v46

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 381
    move-object/from16 v0, v46

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v46

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 383
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v34, mIntent:Landroid/content/Intent;
    const-string v3, "android.settings.ACCESSIBILITY_SETTINGS"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v51

    .line 386
    .local v51, pi:Landroid/app/PendingIntent;
    const v3, 0x7f090770

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090771

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 388
    move-object/from16 v0, v44

    move/from16 v1, v47

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 392
    .end local v34           #mIntent:Landroid/content/Intent;
    .end local v44           #nManager:Landroid/app/NotificationManager;
    .end local v46           #notification:Landroid/app/Notification;
    .end local v47           #notificationID:I
    .end local v51           #pi:Landroid/app/PendingIntent;
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V

    goto/16 :goto_1

    .line 212
    .end local v12           #active_app_list:Ljava/lang/String;
    .end local v19           #defaultMem:J
    .end local v30           #isOn:Z
    .end local v32           #mDefaultMemory:Ljava/lang/String;
    .end local v39           #mStatusBar:Landroid/app/StatusBarManager;
    .end local v49           #oldScreenTimOut:I
    .end local v50           #oldStayAwake:I
    .end local v56           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_29
    const-string v3, "ro.lcd_brightness"

    const/16 v4, 0x82

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 213
    .local v21, default_brightness:I
    const-string v3, "screen_brightness"

    move-object/from16 v0, v53

    move/from16 v1, v21

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    const-string v3, "first_sim_brightness_flag"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 230
    .end local v21           #default_brightness:I
    :catch_0
    move-exception v23

    .line 231
    .local v23, e:Ljava/lang/Exception;
    const-string v3, "SettingsIntentReceiver"

    const-string v4, " Error changing font size for myprofile"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 236
    .end local v23           #e:Ljava/lang/Exception;
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 243
    :cond_2b
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 248
    :cond_2c
    const/16 v30, 0x0

    goto/16 :goto_b

    .line 261
    .restart local v30       #isOn:Z
    .restart local v39       #mStatusBar:Landroid/app/StatusBarManager;
    :cond_2d
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 273
    :cond_2e
    const-string v3, "screen_mode_setting"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_d

    .line 299
    .restart local v56       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2f
    const/16 v3, 0x7530

    goto/16 :goto_e

    .line 395
    .end local v27           #first_sim_brightness_flag:I
    .end local v30           #isOn:Z
    .end local v39           #mStatusBar:Landroid/app/StatusBarManager;
    .end local v56           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_30
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 396
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v57

    .line 397
    .local v57, state:I
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received dock event with state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v3, "cradle_enable"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 400
    .local v18, cradleEnabled:I
    if-nez v57, :cond_33

    .line 402
    const-string v3, "cradle_connect"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    if-eqz v18, :cond_32

    .line 404
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Cradle is enabled without dock"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v38, Landroid/content/Intent;

    invoke-direct/range {v38 .. v38}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v38, mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 407
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "SmartDock connected, Do nothing"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_f
    const-string v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Sound state changed to device (state: 0)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 409
    :cond_31
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f

    .line 416
    .end local v38           #mSendIntent:Landroid/content/Intent;
    :cond_32
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cradle is disabled1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Sound state is device"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 419
    :cond_33
    const/4 v3, 0x7

    move/from16 v0, v57

    if-eq v0, v3, :cond_3

    .line 421
    const-string v3, "cradle_connect"

    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    if-eqz v18, :cond_35

    .line 423
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Cradle is enabled with dock"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v38, Landroid/content/Intent;

    invoke-direct/range {v38 .. v38}, Landroid/content/Intent;-><init>()V

    .line 425
    .restart local v38       #mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 426
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "SmartDock connected, Do nothing"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_10
    const-string v3, "state"

    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Sound state changed to line out (state: 1)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 428
    :cond_34
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_10

    .line 435
    .end local v38           #mSendIntent:Landroid/content/Intent;
    :cond_35
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cradle is disabled2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Sound state is device"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 439
    .end local v18           #cradleEnabled:I
    .end local v57           #state:I
    :cond_36
    const-string v3, "com.sec.samsung.torchwidget.torch_on_1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 440
    const/16 v3, 0xe

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 441
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "SecHardwareInterface.setFlashLed(LIGHT_MIN)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 442
    :cond_37
    const-string v3, "com.sec.samsung.torchwidget.torch_on_2"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 443
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 444
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "SecHardwareInterface.setFlashLed(LIGHT_STANDARD)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 445
    :cond_38
    const-string v3, "com.sec.samsung.torchwidget.torch_on_3"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 446
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 447
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "SecHardwareInterface.setFlashLed(LIGHT_MAX)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 448
    :cond_39
    const-string v3, "com.sec.samsung.torchwidget.torch_off"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 449
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 450
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "SecHardwareInterface.setFlashLed(LIGHT_OFF)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 453
    :cond_3a
    const-string v3, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 454
    const-string v3, "persist.sys.roaming_menu"

    const-string v4, "roaming_menu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v3, "persist.sys.tether_data"

    const-string v4, "tether_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 458
    :cond_3b
    const-string v3, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 459
    const-string v3, "torch_light"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 465
    :goto_11
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/NotificationManager;

    .line 466
    .restart local v48       #notificationManager:Landroid/app/NotificationManager;
    const v3, 0x7f0203dd

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 468
    new-instance v34, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v34       #mIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 462
    .end local v34           #mIntent:Landroid/content/Intent;
    .end local v48           #notificationManager:Landroid/app/NotificationManager;
    :catch_1
    move-exception v23

    .line 463
    .restart local v23       #e:Ljava/lang/Exception;
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Could not turn off torch light "

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 471
    .end local v23           #e:Ljava/lang/Exception;
    :cond_3c
    const-string v3, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 473
    sget-boolean v3, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v3, :cond_3d

    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Limit brightness"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_3d
    const-string v3, "max_brightness"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 475
    .local v35, mMaxBrightness:I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v56

    .line 476
    .restart local v56       #sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v56 .. v56}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 477
    .restart local v24       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_siop_brightness"

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 479
    .end local v24           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v35           #mMaxBrightness:I
    .end local v56           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3e
    const-string v3, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 480
    const-string v3, "change_alert"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    const-string v3, "remote_control"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    const-string v3, "samsung_signin"

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 483
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 531
    :cond_3f
    const-string v3, "android.settings.EAS_POLICY_STATE_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 532
    const-string v3, "device_policy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/DevicePolicyManager;

    .line 533
    .local v22, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v22, :cond_40

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v40

    .line 535
    .local v40, maxTimeout:J
    :goto_12
    const-string v3, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 538
    .local v29, isDeviceLockTime:Z
    const-wide/16 v3, 0x1

    cmp-long v3, v40, v3

    if-gez v3, :cond_3

    .line 539
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Max timeout is removed. Rollback timeout value"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v3, "screen_off_timeout"

    const-string v4, "screen_off_timeout_rollback"

    const/16 v5, 0x7530

    move-object/from16 v0, v53

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v53

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    const-string v4, "lock_screen_lock_after_timeout"

    const-string v5, "lock_after_timeout_rollback"

    if-eqz v29, :cond_41

    const v3, 0x927c0

    :goto_13
    move-object/from16 v0, v53

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v53

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 533
    .end local v29           #isDeviceLockTime:Z
    .end local v40           #maxTimeout:J
    :cond_40
    const-wide/16 v40, 0x0

    goto :goto_12

    .line 542
    .restart local v29       #isDeviceLockTime:Z
    .restart local v40       #maxTimeout:J
    :cond_41
    const/16 v3, 0x1388

    goto :goto_13

    .line 546
    .end local v22           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v29           #isDeviceLockTime:Z
    .end local v40           #maxTimeout:J
    :cond_42
    const-string v3, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "LGT"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 547
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v37

    .line 548
    .local v37, mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    .line 549
    .restart local v26       #extras:Landroid/os/Bundle;
    const-string v3, "ENABLED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    .line 550
    .local v25, enabled:Z
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESTRICT_BACKGROUND, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v3

    move/from16 v0, v25

    if-eq v3, v0, :cond_3

    .line 552
    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    goto/16 :goto_1

    .line 556
    .end local v25           #enabled:Z
    .end local v26           #extras:Landroid/os/Bundle;
    .end local v37           #mPolicyManager:Landroid/net/NetworkPolicyManager;
    :cond_43
    const-string v3, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 557
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v56

    .line 558
    .restart local v56       #sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v56 .. v56}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 559
    .restart local v24       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_security_warning"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 563
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/app/NotificationManager;

    .line 564
    .local v45, nm:Landroid/app/NotificationManager;
    const v3, 0x7f0203df

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 565
    .end local v24           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v45           #nm:Landroid/app/NotificationManager;
    .end local v56           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_44
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V

    .line 569
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "LOCALE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 573
    :catch_2
    move-exception v23

    .line 574
    .restart local v23       #e:Ljava/lang/Exception;
    const-string v3, "SettingsIntentReceiver"

    const-string v4, " Error changing font size for myprofile"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 585
    .end local v23           #e:Ljava/lang/Exception;
    :cond_45
    const-string v3, "android.bluetooth.profile.action.CARKIT_CONNECTED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 586
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "Add bt device to my place"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    .line 588
    .restart local v26       #extras:Landroid/os/Bundle;
    if-eqz v26, :cond_4

    .line 589
    const-string v3, "DeviceName"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 590
    .local v9, BtName:Ljava/lang/String;
    const-string v3, "MacAddress"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 592
    .local v10, MacAddress:Ljava/lang/String;
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", MacAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 595
    .local v16, c:Landroid/database/Cursor;
    const-string v3, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0911c7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 602
    .local v52, placeName:Ljava/lang/String;
    :goto_14
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 604
    new-instance v61, Landroid/content/ContentValues;

    invoke-direct/range {v61 .. v61}, Landroid/content/ContentValues;-><init>()V

    .line 605
    .local v61, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v59

    .line 607
    .local v59, timeStamp:Ljava/lang/String;
    const-string v3, "type"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v3, "profile_name"

    move-object/from16 v0, v61

    move-object/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v3, "bt_device_name"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v3, "bt_mac_address"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v3, "timestamp"

    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v43, Landroid/content/Intent;

    const-string v3, "android.settings.MYPLACE_ADDED"

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v43, myplace_intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v60

    .line 615
    .local v60, uri:Landroid/net/Uri;
    const-string v3, "uri"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 616
    const-string v3, "timestamp"

    move-object/from16 v0, v43

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 600
    .end local v43           #myplace_intent:Landroid/content/Intent;
    .end local v52           #placeName:Ljava/lang/String;
    .end local v59           #timeStamp:Ljava/lang/String;
    .end local v60           #uri:Landroid/net/Uri;
    .end local v61           #values:Landroid/content/ContentValues;
    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0911c7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .restart local v52       #placeName:Ljava/lang/String;
    goto/16 :goto_14

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
