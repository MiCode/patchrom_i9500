.class public Lcom/android/settings_ex/flipfont/FontListActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static DEBUG:Z = false

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"

.field public static final PRIVATE_PREFERENCES:Ljava/lang/String; = "prefs"

.field public static final TAG:Ljava/lang/String; = "FontListPreference"

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sput-boolean v2, Lcom/android/settings_ex/flipfont/FontListActivity;->DEBUG:Z

    .line 556
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.monotype.android.font.chococooky"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.maruberi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.mincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 52
    iput-object v4, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    .line 60
    iput-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    .line 63
    iput-object v4, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 67
    iput v1, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    .line 70
    iput v1, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    .line 73
    iput-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mBuyButtonClicked:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFileCopying:Z

    .line 79
    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mQuestionDialogFontSize:I

    .line 82
    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mDialogLeftPadding:I

    .line 84
    iput v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mDialogTopPadding:I

    .line 86
    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mDialogRightPadding:I

    .line 88
    iput v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mDialogBottomPadding:I

    .line 93
    iput-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mCheckBadFont:Z

    .line 97
    iput v1, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/flipfont/FontListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/flipfont/FontListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "apkName"

    .prologue
    .line 640
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 643
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    move-object v2, p1

    .line 646
    .local v2, deletePackageName:Ljava/lang/String;
    const v3, 0x7f0909a3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 649
    const v3, 0x7f0909a4

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 652
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 655
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings_ex/flipfont/FontListActivity$7;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/flipfont/FontListActivity$7;-><init>(Lcom/android/settings_ex/flipfont/FontListActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 668
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings_ex/flipfont/FontListActivity$8;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/flipfont/FontListActivity$8;-><init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 676
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 677
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 15
    .parameter "apkname"

    .prologue
    const/4 v12, 0x0

    .line 574
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 575
    const-string v11, "FlipFont"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkFont - checking apkname"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget-object v11, Lcom/android/settings_ex/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_3

    .line 579
    sget-object v11, Lcom/android/settings_ex/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    aget-object v11, v11, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 580
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 581
    const-string v11, "FlipFont"

    const-string v13, "**Apk name matches list**"

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v11, v12

    .line 635
    :goto_1
    return v11

    .line 578
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 588
    :cond_3
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 589
    const-string v11, "FlipFont"

    const-string v13, "checkFont - check if valid certificate"

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_4
    const/4 v9, 0x0

    .line 593
    .local v9, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v11, v11, Lcom/android/settings_ex/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 597
    :goto_2
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 600
    .local v10, signatures:[Landroid/content/pm/Signature;
    aget-object v11, v10, v12

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 601
    .local v2, cert:[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 602
    .local v7, input:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 604
    .local v4, cf:Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string v11, "X509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 609
    :goto_3
    const/4 v1, 0x0

    .line 611
    .local v1, c:Ljava/security/cert/X509Certificate;
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 616
    :goto_4
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_5

    .line 617
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APK name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate issued by: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The certificate is valid from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate SN# "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Generated with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_5
    const-string v3, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 627
    .local v3, certIssuedByString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 629
    .local v8, issuerDNString:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 630
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_6

    .line 631
    const-string v11, "FlipFont"

    const-string v13, "**Certificate data is correct**"

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v11, v12

    .line 633
    goto/16 :goto_1

    .line 605
    .end local v1           #c:Ljava/security/cert/X509Certificate;
    .end local v3           #certIssuedByString:Ljava/lang/String;
    .end local v8           #issuerDNString:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 607
    .local v5, e:Ljava/security/cert/CertificateException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 612
    .end local v5           #e:Ljava/security/cert/CertificateException;
    .restart local v1       #c:Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v5

    .line 614
    .restart local v5       #e:Ljava/security/cert/CertificateException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 635
    .end local v5           #e:Ljava/security/cert/CertificateException;
    .restart local v3       #certIssuedByString:Ljava/lang/String;
    .restart local v8       #issuerDNString:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 595
    .end local v1           #c:Ljava/security/cert/X509Certificate;
    .end local v2           #cert:[B
    .end local v3           #certIssuedByString:Ljava/lang/String;
    .end local v4           #cf:Ljava/security/cert/CertificateFactory;
    .end local v7           #input:Ljava/io/InputStream;
    .end local v8           #issuerDNString:Ljava/lang/String;
    .end local v10           #signatures:[Landroid/content/pm/Signature;
    :catch_2
    move-exception v11

    goto/16 :goto_2
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 234
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "selectedFont"

    const-string v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 699
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 700
    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 701
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 3

    .prologue
    .line 549
    if-eqz p0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 554
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 256
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 260
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 288
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 293
    :cond_1
    return-void

    .line 268
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CHN"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CHU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090991

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 276
    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    iput-boolean v4, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mBuyButtonClicked:Z

    goto :goto_0

    .line 280
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090990

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .restart local v1       #uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 283
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 284
    iput-boolean v4, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mBuyButtonClicked:Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const v7, 0x7f09098c

    const v6, 0x7f09098b

    const v5, 0x7f090988

    .line 108
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v3, "PRABHAT"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p0, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    .line 113
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 115
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 117
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040064

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 120
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    const v3, 0x7f090143

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 124
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 131
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b0114

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    .line 133
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    if-nez v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 135
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/flipfont/FontListAdapter;->loadTypefaces()V

    .line 137
    invoke-static {}, Lcom/android/settings_ex/flipfont/FontListAdapter;->destroyInstance()V

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, selectedFont:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 150
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, okButton:Ljava/lang/String;
    :goto_1
    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v3, "FontListPreference"

    const-string v4, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v3, "MONOTYPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 163
    const-string v3, "FontListPreference"

    const-string v4, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    if-eqz v3, :cond_7

    .line 166
    const-string v2, "HelveticaNeueRegular.xml"

    .line 167
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    .line 168
    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_2
    iget v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    if-gez v3, :cond_2

    .line 188
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    .line 192
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 202
    const v3, 0x7f090992

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->loadPreferences()V

    .line 206
    iget-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    if-eqz v3, :cond_4

    .line 207
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->savePreferences()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->selectDialog()V

    .line 212
    :cond_4
    const-string v3, "PRABHAT"

    const-string v4, "onCreate() - end"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 127
    .end local v1           #okButton:Ljava/lang/String;
    .end local v2           #selectedFont:Ljava/lang/String;
    :cond_5
    const-string v3, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 153
    .restart local v2       #selectedFont:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1       #okButton:Ljava/lang/String;
    goto/16 :goto_1

    .line 173
    :cond_7
    const-string v2, "default"

    .line 174
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    .line 175
    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 181
    :cond_8
    const-string v3, "FontListPreference"

    const-string v4, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    .line 183
    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "which"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 301
    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    if-ne p3, v5, :cond_0

    .line 364
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v3, 0x0

    .line 307
    .local v3, question:Ljava/lang/String;
    const/4 v1, 0x0

    .line 308
    .local v1, fontName:Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 309
    iput p3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    .line 311
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/android/settings_ex/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v6, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, press_apkname:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mCheckBadFont:Z

    .line 313
    iget-boolean v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mCheckBadFont:Z

    if-eqz v5, :cond_1

    .line 314
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/flipfont/FontListActivity;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    if-ge p3, v8, :cond_2

    .line 319
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 321
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 332
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090047

    new-instance v6, Lcom/android/settings_ex/flipfont/FontListActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/flipfont/FontListActivity$2;-><init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090048

    new-instance v7, Lcom/android/settings_ex/flipfont/FontListActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/flipfont/FontListActivity$1;-><init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 346
    new-instance v5, Lcom/android/settings_ex/flipfont/FontListActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/flipfont/FontListActivity$3;-><init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 354
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 358
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 360
    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 361
    iput-boolean v8, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->savePreferences()V

    goto/16 :goto_0

    .line 323
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 325
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    if-nez v5, :cond_3

    .line 326
    new-instance v5, Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings_ex/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 327
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/flipfont/FontListAdapter;->loadTypefaces()V

    .line 329
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public onOkButtonPressed()Z
    .locals 32

    .prologue
    .line 426
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, apkname:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    move/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->savePreferences()V

    .line 434
    sget-boolean v27, Lcom/android/settings_ex/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v27, :cond_0

    .line 435
    const-string v27, "FlipFont"

    const-string v28, "**onOkButtonPressed - bad font**"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    const/16 v27, 0x0

    .line 542
    :goto_0
    return v27

    .line 439
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    .line 444
    :goto_1
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->savePreferences()V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 448
    new-instance v27, Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/android/settings_ex/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/flipfont/FontListAdapter;->loadTypefaces()V

    .line 452
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 454
    .local v25, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/flipfont/FontListActivity;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/flipfont/FontListActivity;->mPreviousFont:I

    .line 459
    new-instance v14, Lcom/android/settings_ex/flipfont/FontWriter;

    invoke-direct {v14}, Lcom/android/settings_ex/flipfont/FontWriter;-><init>()V

    .line 460
    .local v14, fontWriter:Lcom/android/settings_ex/flipfont/FontWriter;
    if-eqz v25, :cond_3

    const-string v27, "default"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 462
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "sans.loc"

    const-string v29, "default#default"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/settings_ex/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    if-nez v25, :cond_5

    .line 464
    const-string v27, "FontListPreference"

    const-string v28, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 442
    .end local v14           #fontWriter:Lcom/android/settings_ex/flipfont/FontWriter;
    .end local v25           #selectedFont:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    goto/16 :goto_1

    .line 469
    .restart local v14       #fontWriter:Lcom/android/settings_ex/flipfont/FontWriter;
    .restart local v25       #selectedFont:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings_ex/flipfont/TypefaceFinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings_ex/flipfont/Typeface;

    move-result-object v24

    .line 471
    .local v24, sansTypeface:Lcom/android/settings_ex/flipfont/Typeface;
    const-string v27, ".xml"

    const-string v28, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 472
    .local v15, fontdir:Ljava/lang/String;
    const-string v27, " "

    const-string v28, "-"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v14, v0, v15}, Lcom/android/settings_ex/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 475
    .local v13, fontDir:Ljava/io/File;
    const/16 v26, 0x0

    .line 476
    .local v26, tpf:Lcom/android/settings_ex/flipfont/TypefaceFile;
    if-eqz v24, :cond_6

    .line 477
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 478
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #tpf:Lcom/android/settings_ex/flipfont/TypefaceFile;
    check-cast v26, Lcom/android/settings_ex/flipfont/TypefaceFile;

    .line 481
    .restart local v26       #tpf:Lcom/android/settings_ex/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 483
    .local v19, press_apknam:Ljava/lang/String;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    const/16 v28, 0x80

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 485
    .local v8, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v21

    .line 488
    .local v21, res:Landroid/content/res/Resources;
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    .line 489
    .local v9, assetManager:Landroid/content/res/AssetManager;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "fonts/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings_ex/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 491
    .local v18, in:Ljava/io/InputStream;
    invoke-virtual/range {v26 .. v26}, Lcom/android/settings_ex/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v14, v13, v0, v1}, Lcom/android/settings_ex/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v9           #assetManager:Landroid/content/res/AssetManager;
    .end local v18           #in:Ljava/io/InputStream;
    .end local v19           #press_apknam:Ljava/lang/String;
    .end local v21           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 492
    :catch_0
    move-exception v12

    .line 493
    .local v12, ex:Ljava/lang/Exception;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception in file operation, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 498
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v16           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "sans.loc"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "#"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/settings_ex/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 502
    .local v6, am:Landroid/app/IActivityManager;
    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 503
    .local v10, config:Landroid/content/res/Configuration;
    new-instance v20, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object/from16 v0, v20

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 508
    .local v20, randomizer:Ljava/util/Random;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->hashCode()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v10, Landroid/content/res/Configuration;->FlipFont:I

    .line 509
    invoke-interface {v6, v10}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    .end local v6           #am:Landroid/app/IActivityManager;
    .end local v10           #config:Landroid/content/res/Configuration;
    .end local v20           #randomizer:Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v28, "activity"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 519
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/16 v27, 0x32

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 520
    .local v5, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v16, 0x1

    .line 521
    .restart local v16       #i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 522
    .local v3, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 524
    .local v23, s:Ljava/lang/String;
    const-string v27, "com.android.settings_ex"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_7

    const-string v27, "com.samsung.music"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_7

    const-string v27, "com.sec.android.app.music"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_7

    .line 525
    const-string v27, "com.infraware.polarisoffice"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_8

    const-string v27, "com.infraware.polarisoffice4"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_8

    const-string v27, "com.infraware.polarisviewer4"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_8

    const-string v27, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_9

    .line 527
    :cond_8
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_5

    .line 512
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v5           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v16           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v23           #s:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 514
    .local v11, e:Landroid/os/RemoteException;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Intentionally left blank, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 530
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v3       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v5       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v16       #i:I
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v23       #s:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 536
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v23           #s:Ljava/lang/String;
    :cond_a
    const-string v27, "com.android.settings_ex"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 538
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 539
    .local v22, returnIntent:Landroid/content/Intent;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->restartLater()V

    .line 542
    const/16 v27, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 225
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 219
    return-void
.end method

.method public restartLater()V
    .locals 0

    .prologue
    .line 418
    if-eqz p0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 421
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 5

    .prologue
    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 685
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 688
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 690
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 691
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .parameter "selectedFont"

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 244
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, question:Ljava/lang/String;
    const/4 v2, 0x0

    .line 369
    .local v2, fontName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->loadPreferences()V

    .line 370
    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    .line 371
    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 372
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 374
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 381
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090047

    new-instance v6, Lcom/android/settings_ex/flipfont/FontListActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/flipfont/FontListActivity$5;-><init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090048

    new-instance v7, Lcom/android/settings_ex/flipfont/FontListActivity$4;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/flipfont/FontListActivity$4;-><init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 396
    new-instance v5, Lcom/android/settings_ex/flipfont/FontListActivity$6;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/flipfont/FontListActivity$6;-><init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 404
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 406
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 407
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 408
    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 409
    iput-boolean v8, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListActivity;->savePreferences()V

    .line 411
    return-void

    .line 376
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 378
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings_ex/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
