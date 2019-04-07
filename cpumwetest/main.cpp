#include <pthread.h>
#include <semaphore.h>
#include <stdio.h>
#include <inttypes.h>
#include <stdint.h>
#include <stdlib.h>
#include <time.h>


sem_t sem_begin0, sem_begin1, sem_end;

int x, y, read0, read1;
//エラー発生回数
uint64_t    reocrder_cnt    = 0;

//ループ回数定義
const uint64_t LOOP_CNT     = 1000000;

//関数プロトタイプ定義
void* thread0_impl(void *param);
void* thread1_impl(void *param);

//メイン処理
int main() {

    sem_init(&sem_begin1, 0, 0);
    sem_init(&sem_begin1, 0, 0);
    sem_init(&sem_end, 0, 0);

    pthread_t thread0, thread1;
    pthread_create(&thread0, NULL, thread0_impl, NULL);
    pthread_create(&thread1, NULL, thread1_impl, NULL);

    for (uint64_t i = 0; i < LOOP_CNT; i++) {

        x = 0;
        y = 0;

        sem_post(&sem_begin0);
        sem_post(&sem_begin1);

        sem_wait(&sem_end);
        sem_wait(&sem_end);

        if ((read0 == 0) && (read1 == 0)) {
            printf("reorderoing happend on iteration %" PRIu64 "\n",i);
            //exit(0);
            reocrder_cnt++;
        }

    }

    if (reocrder_cnt <= 0) {
        printf("NO reordering detected during %" PRIu64 "iterations", LOOP_CNT);
    } else {
        printf("reorderoing happend  %" PRIu64 " times. during  %" PRIu64 " iterations\n",reocrder_cnt, LOOP_CNT);
    }

    return 0;

}

void* thread0_impl(void *param) {

    for (;;) {

        sem_wait(&sem_begin0);

        x = 1;

        //コンパイラによる並び替えだけを防ぐ
        asm volatile("" ::: "memory");

        //次の行はハードウェアによる並び替えも防ぐ
        //asm volatile("mfence" ::: "memory");

        read0 = y;

        sem_post(&sem_end);

    }

    return NULL;
}


void* thread1_impl(void *param) {

    for (;;) {

        sem_wait(&sem_begin1);

        y = 1;

        //コンパイラによる並び替えだけを防ぐ
        asm volatile("" ::: "memory");

        //次の行はハードウェアによる並び替えも防ぐ
        //asm volatile("mfence" ::: "memory");

        read1 = x;

        sem_post(&sem_end);

    }

    return NULL;
}
