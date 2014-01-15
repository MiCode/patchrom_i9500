.class public Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# static fields
.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2181
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 2185
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2194
    :goto_0
    return-void

    .line 2187
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2188
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$3100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2190
    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 2191
    .local v1, dialog:Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2192
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2193
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 2198
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2199
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/DataUsageSummary;

    .line 2200
    .local v3, target:Lcom/android/settings_ex/DataUsageSummary;
    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$3200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v4

    .line 2202
    .local v4, editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2203
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2205
    .local v9, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f04004e

    const/4 v1, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 2206
    .local v11, view:Landroid/view/View;
    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2207
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/high16 v12, 0x3f80

    invoke-direct {v10, v0, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2208
    .local v10, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v0, v1, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2209
    const v0, 0x7f0b00cc

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2211
    .end local v10           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v0, 0x7f0b00cd

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2213
    .local v2, cycleDayPicker:Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 2214
    .local v5, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v8

    .line 2216
    .local v8, cycleDay:I
    invoke-virtual {v2}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 2217
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2218
    const/16 v0, 0x1f

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2219
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2220
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2221
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 2223
    const v0, 0x7f09092a

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2224
    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2226
    const v12, 0x7f09092c

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v6, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2242
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
