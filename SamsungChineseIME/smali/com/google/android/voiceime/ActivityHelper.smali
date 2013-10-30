.class public Lcom/google/android/voiceime/ActivityHelper;
.super Landroid/app/Activity;
.source "ActivityHelper.java"


# static fields
.field private static final RECOGNITION_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityHelper"


# instance fields
.field private DEBUG:Z

.field private mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voiceime/ActivityHelper;->DEBUG:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V

    return-void
.end method

.method private createResultDialog([Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .parameter "recognitionResults"

    .prologue
    .line 83
    const-string v1, "ActivityHelper"

    const-string v2, "--------createResultDialog-----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    new-instance v1, Lcom/google/android/voiceime/ActivityHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/voiceime/ActivityHelper$1;-><init>(Lcom/google/android/voiceime/ActivityHelper;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v1, Lcom/google/android/voiceime/ActivityHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/ActivityHelper$2;-><init>(Lcom/google/android/voiceime/ActivityHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    const/high16 v1, 0x104

    new-instance v2, Lcom/google/android/voiceime/ActivityHelper$3;

    invoke-direct {v2, p0}, Lcom/google/android/voiceime/ActivityHelper$3;-><init>(Lcom/google/android/voiceime/ActivityHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 88
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030071

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    goto :goto_0
.end method

.method private notifyResult(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/voiceime/ActivityHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyResult, the result is-----------> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/ActivityHelper;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/voiceime/ServiceBridge;->notifyResult(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/voiceime/ActivityHelper;->finish()V

    .line 124
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 68
    iget-boolean v1, p0, Lcom/google/android/voiceime/ActivityHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityHelper"

    const-string v2, "------onActivityResult---------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-eqz p3, :cond_2

    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-boolean v1, p0, Lcom/google/android/voiceime/ActivityHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityHelper"

    const-string v2, "-----------get data successful-----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/voiceime/ActivityHelper;->createResultDialog([Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 80
    .end local v0           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 77
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/voiceime/ActivityHelper;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ActivityHelper"

    const-string v2, "--------get data failed-----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-boolean v2, p0, Lcom/google/android/voiceime/ActivityHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityHelper"

    const-string v3, "------onCreate---------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    new-instance v2, Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {v2}, Lcom/google/android/voiceime/ServiceBridge;-><init>()V

    iput-object v2, p0, Lcom/google/android/voiceime/ActivityHelper;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "calling_package"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v2, "android.speech.extra.MAX_RESULTS"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    if-eqz p1, :cond_1

    .line 58
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, languageLocale:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 60
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .end local v1           #languageLocale:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/voiceime/ActivityHelper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    return-void
.end method
