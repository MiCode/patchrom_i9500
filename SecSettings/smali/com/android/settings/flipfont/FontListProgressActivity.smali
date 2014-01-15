.class public Lcom/android/settings_ex/flipfont/FontListProgressActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FontListProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/flipfont/FontListProgressActivity$1;,
        Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)Lcom/android/settings_ex/flipfont/FontListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/flipfont/FontListProgressActivity;Lcom/android/settings_ex/flipfont/FontListAdapter;)Lcom/android/settings_ex/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iput-object p0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->context:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 29
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;-><init>(Lcom/android/settings_ex/flipfont/FontListProgressActivity;Lcom/android/settings_ex/flipfont/FontListProgressActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    :cond_0
    return-void
.end method
