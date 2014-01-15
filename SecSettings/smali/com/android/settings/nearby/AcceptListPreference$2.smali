.class Lcom/android/settings_ex/nearby/AcceptListPreference$2;
.super Landroid/os/Handler;
.source "AcceptListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nearby/AcceptListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/AcceptListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/AcceptListPreference;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference$2;->this$0:Lcom/android/settings_ex/nearby/AcceptListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 98
    const-string v7, "AcceptListPreference"

    const-string v8, "mHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 127
    const-string v7, "AcceptListPreference"

    const-string v8, "Handler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined handler message :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings_ex/nearby/AcceptListPreference$2;->this$0:Lcom/android/settings_ex/nearby/AcceptListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/nearby/AcceptListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 105
    iget-object v7, p0, Lcom/android/settings_ex/nearby/AcceptListPreference$2;->this$0:Lcom/android/settings_ex/nearby/AcceptListPreference;

    invoke-virtual {v7}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 106
    .local v1, dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 110
    .local v5, listView:Landroid/widget/ListView;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 111
    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_1
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 115
    .local v6, positiveButton:Landroid/widget/Button;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    new-instance v4, Lcom/android/settings_ex/nearby/ListItemListener;

    invoke-direct {v4, v6}, Lcom/android/settings_ex/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 118
    .local v4, listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    invoke-virtual {v5, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    new-instance v0, Lcom/android/settings_ex/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/settings_ex/nearby/AcceptListPreference$2;->this$0:Lcom/android/settings_ex/nearby/AcceptListPreference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v0, v4, v1, v7, v8}, Lcom/android/settings_ex/nearby/DeleteButtonListener;-><init>(Lcom/android/settings_ex/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 122
    .local v0, deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v0           #deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #i:I
    .end local v4           #listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    .end local v5           #listView:Landroid/widget/ListView;
    .end local v6           #positiveButton:Landroid/widget/Button;
    :catch_0
    move-exception v2

    .line 131
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "AcceptListPreference"

    const-string v8, "Handler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method
