<template>
  <div>
    <vxe-table
      border
      stripe
      show-overflow
      height="400"
      :loading="loading"
      :column-config="{ resizable: true }"
      :row-config="{ isHover: true }"
      :checkbox-config="{ labelField: 'id', highlight: true, range: true }"
      :data="tableData"
      :scroll-x="{ enabled: true }"
      :scroll-y="{ enabled: true }"
    >
      <!-- <vxe-column title="ID" width="140"></vxe-column>
      <vxe-column field="name" title="Name"></vxe-column>
      <vxe-column field="sex" title="Sex"></vxe-column>
      <vxe-column field="age" title="Age"></vxe-column>
      <vxe-column field="address" title="Address" show-overflow></vxe-column> -->
      <vxe-column
        v-for="i in headerLength"
        width="140"
        :key="i"
        :field="`header${i}`"
        :title="`列_${i}`"
      ></vxe-column>
    </vxe-table>
  </div>
</template>

<script setup>
import { ref, onMounted } from "vue";
const loading = ref(false);
const tableData = ref([]);
const headerLength = 20;
const getData = () => {
  const arr = [];
  for (let i = 0; i < 100000; i++) {
    const obj = {};
    for (let j = 0; j < headerLength; j++) {
      obj[`header${j + 1}`] = `列_${j + 1}_${i + 1}`;
    }
    arr.push(obj);
  }
  tableData.value = arr;
  loading.value = false;
};
onMounted(() => {
  loading.value = true;
  getData();
  // setTimeout(() => {
  //   tableData.value = [
  //     {
  //       id: 10001,
  //       name: "Test1",
  //       role: "Develop",
  //       sex: "0",
  //       age: 28,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10002,
  //       name: "Test2",
  //       role: "Test",
  //       sex: "1",
  //       age: 22,
  //       address: "Guangzhou",
  //     },
  //     {
  //       id: 10003,
  //       name: "Test3",
  //       role: "PM",
  //       sex: "0",
  //       age: 32,
  //       address: "Shanghai",
  //     },
  //     {
  //       id: 10004,
  //       name: "Test4",
  //       role: "Designer",
  //       sex: "1",
  //       age: 23,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10005,
  //       name: "Test5",
  //       role: "Develop",
  //       sex: "1",
  //       age: 30,
  //       address: "Shanghai",
  //     },
  //     {
  //       id: 10006,
  //       name: "Test6",
  //       role: "Designer",
  //       sex: "1",
  //       age: 21,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10007,
  //       name: "Test7",
  //       role: "Test",
  //       sex: "0",
  //       age: 29,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10008,
  //       name: "Test8",
  //       role: "Develop",
  //       sex: "0",
  //       age: 35,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10009,
  //       name: "Test9",
  //       role: "Test",
  //       sex: "1",
  //       age: 21,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10010,
  //       name: "Test10",
  //       role: "Develop",
  //       sex: "0",
  //       age: 28,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10011,
  //       name: "Test11",
  //       role: "Test",
  //       sex: "0",
  //       age: 29,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10012,
  //       name: "Test12",
  //       role: "Develop",
  //       sex: "1",
  //       age: 27,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10013,
  //       name: "Test13",
  //       role: "Test",
  //       sex: "0",
  //       age: 24,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10014,
  //       name: "Test14",
  //       role: "Develop",
  //       sex: "1",
  //       age: 34,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10015,
  //       name: "Test15",
  //       role: "Test",
  //       sex: "1",
  //       age: 21,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10016,
  //       name: "Test16",
  //       role: "Develop",
  //       sex: "0",
  //       age: 20,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10017,
  //       name: "Test17",
  //       role: "Test",
  //       sex: "1",
  //       age: 31,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10018,
  //       name: "Test18",
  //       role: "Develop",
  //       sex: "0",
  //       age: 32,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10019,
  //       name: "Test19",
  //       role: "Test",
  //       sex: "1",
  //       age: 37,
  //       address: "test abc",
  //     },
  //     {
  //       id: 10020,
  //       name: "Test20",
  //       role: "Develop",
  //       sex: "1",
  //       age: 41,
  //       address: "test abc",
  //     },
  //   ];
  //   loading.value = false;
  // }, 500);
});
</script>
