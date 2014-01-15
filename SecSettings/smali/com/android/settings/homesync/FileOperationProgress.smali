.class public Lcom/android/settings_ex/homesync/FileOperationProgress;
.super Landroid/app/Fragment;
.source "FileOperationProgress.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileOperationProgress"

.field private static rootView:Landroid/view/View;


# instance fields
.field public cancelButton:Landroid/widget/Button;

.field public filenameView:Landroid/widget/TextView;

.field public messageView:Landroid/widget/TextView;

.field public perFilePercentageView:Landroid/widget/TextView;

.field public perFileProgressBarView:Landroid/widget/ProgressBar;

.field public titleView:Landroid/widget/TextView;

.field public totalNumberView:Landroid/widget/TextView;

.field public totalPercentageView:Landroid/widget/TextView;

.field public totalProgressBarView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v0, 0x7f040075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    .line 65
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v1, 0x7f0b016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    .line 66
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationProgress;->messageView:Landroid/widget/TextView;

    .line 67
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationProgress;->filenameView:Landroid/widget/TextView;

    .line 69
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationProgress;->perFileProgressBarView:Landroid/widget/ProgressBar;

    .line 70
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v1, 0x7f0b0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationProgress;->perFilePercentageView:Landroid/widget/TextView;

    .line 71
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v1, 0x7f0b0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationProgress;->totalProgressBarView:Landroid/widget/ProgressBar;

    .line 72
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v1, 0x7f0b0173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationProgress;->totalNumberView:Landroid/widget/TextView;

    .line 73
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationProgress;->totalPercentageView:Landroid/widget/TextView;

    .line 81
    sget-object v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    return-object v0
.end method
