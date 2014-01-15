.class public Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MemorySettings"


# instance fields
.field private mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 75
    const v1, 0x7f0908b8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 76
    const v1, 0x7f0908b9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    .line 77
    const v1, 0x7f0908ba

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    .line 78
    new-instance v1, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 79
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    const v1, 0x7f040126

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 82
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 83
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 84
    new-instance v1, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    return-void
.end method
