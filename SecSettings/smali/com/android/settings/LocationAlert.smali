.class public Lcom/android/settings_ex/LocationAlert;
.super Landroid/app/Activity;
.source "LocationAlert.java"


# static fields
.field private static final GPS_SHOW_DO_NOT:Ljava/lang/String; = "com.android.settings_ex.GPSDdialogFlag"

.field private static final IS_SHOW:Ljava/lang/String; = "show_again"


# instance fields
.field checkoption:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field mContext:Landroid/content/Context;

.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings_ex/LocationAlert$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/LocationAlert$2;-><init>(Lcom/android/settings_ex/LocationAlert;)V

    iput-object v0, p0, Lcom/android/settings_ex/LocationAlert;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private OnGps()V
    .locals 3

    .prologue
    .line 92
    const-string v0, "GPS"

    const-string v1, "==========GPSON=========="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LocationAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings_ex/LocationAlert;->OnGps()V

    return-void
.end method


# virtual methods
.method BroadCastUpdateWidget()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/LocationAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    const-string v1, "slyph"

    const-string v2, "BroadCasts"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method doNotShowAgain()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.GPSDdialogFlag"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, i:Landroid/content/Intent;
    const-string v1, "GPSShowState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/LocationAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationAlert;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, entryView:Landroid/view/View;
    const v3, 0x7f0b01d0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/android/settings_ex/LocationAlert;->checkoption:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/LocationAlert;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/LocationAlert;->prefs:Landroid/content/SharedPreferences;

    .line 42
    iget-object v3, p0, Lcom/android/settings_ex/LocationAlert;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "show_again"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 44
    .local v2, isShow:Z
    const-string v3, "GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==========onCreate==isShow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-nez v2, :cond_0

    .line 47
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f091049

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090edc

    new-instance v5, Lcom/android/settings_ex/LocationAlert$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/LocationAlert$1;-><init>(Lcom/android/settings_ex/LocationAlert;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 72
    .local v0, dialogs:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/settings_ex/LocationAlert;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 81
    .end local v0           #dialogs:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/LocationAlert;->OnGps()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationAlert;->BroadCastUpdateWidget()V

    .line 78
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LocationAlert;->setResult(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationAlert;->finish()V

    goto :goto_0
.end method
